"""Rewrite ndisasm syntax so NASM reproduces the original encoding length."""
import re

def modrm_info(hexs):
    b = bytes.fromhex(hexs)
    i = 0
    a32 = False
    while b[i] in (0x66, 0x67, 0x26, 0x2e, 0x36, 0x3e, 0x64, 0x65, 0xf2, 0xf3):
        if b[i] == 0x67:
            a32 = True
        i += 1
    op = b[i]; i += 1
    if 0xa0 <= op <= 0xa3:
        return None
    if op == 0x0f:
        i += 1
    if i >= len(b):
        return None
    m = b[i]
    return a32, m >> 6, m & 7, (b[i + 1] if a32 and (m & 7) == 4 and m >> 6 != 3 and i + 1 < len(b) else None)

def fix(text, hexs):
    if '[' not in text:
        return text
    info = modrm_info(hexs)
    t = text
    if info:
        a32, mod, rm, sib = info
        if a32:
            t = t.replace('[dword ', '[')
            if sib is not None and (sib >> 6) == 0 and mod != 3:
                # make base/index explicit in original order: base + index*1
                base, idx = sib & 7, (sib >> 3) & 7
                R = ['eax', 'ecx', 'edx', 'ebx', 'esp', 'ebp', 'esi', 'edi']
                if idx != 4 and not (base == 5 and mod == 0):
                    m = re.search(r'\[((?:[a-z]s:)?)(\w+)\+(\w+)((?:[+-]0x[0-9a-f]+)?)\]', t)
                    if m:
                        t = t[:m.start()] + '[%s%s+%s*1%s]' % (m.group(1), R[base], R[idx], m.group(4)) + t[m.end():]
            if mod == 2:
                t = t.replace('[', '[dword ', 1)
            if mod == 1:
                t = t.replace('[', '[byte ', 1)
        else:
            if mod == 2:
                t = t.replace('[', '[word ', 1)
            if mod == 1:
                t = t.replace('[', '[byte ', 1)
    return t
