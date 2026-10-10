#!/usr/bin/env python3
"""Generate reassemblable NASM source from rdis.py output.

usage: gen.py image.bin dis.json outdir [force_db_file]
Each code segment becomes a NASM section with vstart=0 relative to its
segment base, so near labels are segment-relative offsets just like in
the original TASM build. Large data blocks go to separate .bin files.
"""
import json, os, re, sys
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from fixtext import fix

img = open(sys.argv[1], 'rb').read()
D = json.load(open(sys.argv[2]))
out = sys.argv[3]
force_db = set()
if len(sys.argv) > 4 and os.path.exists(sys.argv[4]):
    force_db = set(int(x, 16) for x in open(sys.argv[4]).read().split())

I = D['insns']
byl = {i['lin']: i for i in I}
labels = {int(k): v for k, v in D['labels'].items()}

# segment regions: start at first code byte of segment (or 0 for seg 0)
segs = {}
for i in I:
    s = i['seg']
    segs[s] = min(segs.get(s, 1 << 30), i['lin'])
order = sorted(segs.items(), key=lambda x: x[1])
regions = []
for n, (s, start) in enumerate(order):
    if n == 0:
        start = 0
    end = order[n + 1][1] if n + 1 < len(order) else len(img)
    regions.append((s, start, end))


SEGNOTES = {
    0x0000: 'main: startup, DOS memory resize, effect sequencing, exit',
    0x0027: 'VGA mode setup (unchained / mode-X style: 3C4, 3CE, 3D4)',
    0x0033: 'palette upload / fades (3C7-3C9)',
    0x003d: 'timer interrupt (INT 8) handler + vertical retrace sync (3DA)',
    0x0071: 'keyboard interrupt (INT 9) handler',
    0x0076: 'effect code: screen setup, copy loops (3C4/3D4)',
    0x0113: 'effect code: fixed-point math, planar drawing (FS/GS)',
    0x0249: 'effect code: retrace-synced screen effects, text mode/scroller',
    0x0353: '3D: transformations (heavy IMUL)',
    0x03e6: '3D: projection / polygon setup and filling (IMUL/IDIV)',
    0x0738: 'drawing routines using FS/GS buffers',
    0x07cc: 'text / font output',
    0x20c1: 'Gravis Ultrasound music player (base+103h/105h/107h, DRAM upload)',
}


def lname(lin):
    i = byl[lin]
    kinds = labels.get(lin, [[]])[0]
    p = 'l'
    if 'entry' in kinds:
        p = 'start'
        return 'start'
    if 'extra' in kinds:
        p = 'irq'
    elif any(k.startswith('far') for k in kinds):
        p = 'far'
    elif 'call' in kinds:
        p = 'sub'
    return '%s_%04x_%04x' % (p, i['seg'], i['off'])


def dbline(bs):
    return '        db ' + ','.join('0x%02x' % b for b in bs)


os.makedirs(os.path.join(out, 'data'), exist_ok=True)
lines = ['; AIRFRAME by PRIME (Assembly 1994) - reconstructed source',
         '; Generated from the PKLITE-unpacked executable. Assemble with:',
         ';   nasm -O0 -f bin -o airframe.img airframe.asm',
         '; then tools/mkexe.py adds the MZ header and relocation table.',
         '; Numbers like 0x0071 in far calls are segment paragraphs relative',
         '; to the load address (fixed up by DOS via the relocation table).',
         '', 'bits 16', 'cpu 386', '']

ctl = re.compile(r'^(j\w+|loop\w*|jcxz|jecxz|call)\s+(short |near )?(0x[0-9a-f]+)$')
far = re.compile(r'^(call|jmp)\s+(?:far )?(0x[0-9a-f]+):(0x[0-9a-f]+)$')
lineinfo = []   # (line index, lin, length) for verification

for s, start, end in regions:
    lines.append('')
    lines.append(';' + '=' * 70)
    lines.append('; segment %04x  (image 0x%05x-0x%05x)' % (s, start, end))
    if s in SEGNOTES:
        lines.append('; ' + SEGNOTES[s])
    lines.append(';' + '=' * 70)
    lines.append('section seg_%04x start=0x%x vstart=0x%x' % (s, start, start - s * 16))
    p = start
    while p < end:
        if p in byl and p not in force_db:
            i = byl[p]
            ln = len(i['hex']) // 2
            if p in labels:
                lines.append('')
                lines.append(lname(p) + ':')
            t = fix(i['text'], i['hex'])
            m = ctl.match(t)
            if m and 'target' in i and i['target'] in byl and byl[i['target']]['seg'] == s:
                op = m.group(1)
                size = m.group(2) or ''
                if op.startswith('j') and op != 'jcxz' and op != 'jecxz':
                    size = 'short ' if ln == 2 else 'near '
                if op == 'call':
                    size = ''
                t = '%s %s%s' % (op, size, lname(i['target']))
            mf = far.match(t)
            if mf and 'far' in i:
                ts, to = i['far']
                tl = ts * 16 + to
                tn = lname(tl) if tl in byl else '0x%04x' % to
                t = '%s 0x%04x:%s' % (mf.group(1), ts, tn)
            lineinfo.append((len(lines), p, ln))
            lines.append('        %-40s; %04x:%04x' % (t, s, i['off']))
            p += ln
        elif p in byl:   # forced db
            i = byl[p]
            ln = len(i['hex']) // 2
            if p in labels:
                lines.append('')
                lines.append(lname(p) + ':')
            lines.append('%-48s; %04x:%04x %s' % (dbline(img[p:p + ln]), s, i['off'], i['text']))
            p += ln
        else:
            q = p
            while q < end and q not in byl:
                q += 1
            blob = img[p:q]
            if len(blob) >= 256:
                fn = 'data/d_%05x.bin' % p
                open(os.path.join(out, fn), 'wb').write(blob)
                lines.append('        incbin "%s"   ; 0x%x bytes of data at %04x:%04x'
                             % (fn, len(blob), s, p - s * 16))
            else:
                lines.append('; data %04x:%04x (%d bytes)' % (s, p - s * 16, len(blob)))
                for k in range(0, len(blob), 16):
                    lines.append(dbline(blob[k:k + 16]))
            p = q

open(os.path.join(out, 'airframe.asm'), 'w').write('\n'.join(lines) + '\n')
json.dump(lineinfo, open(os.path.join(out, 'lineinfo.json'), 'w'))
print('regions', len(regions), 'lines', len(lines))
