#!/usr/bin/env python3
"""Recursive-descent disassembler for a real-mode multi-segment DOS image.

Uses ndisasm for decoding. Tracks seg:off so near branches resolve within
the current segment and far calls/jumps switch segment.
Output: JSON with decoded instructions and discovered entry points.
"""
import json, re, struct, subprocess, sys, tempfile, os
from collections import deque

img = open(sys.argv[1], 'rb').read()
relocs = set()
for l in open(sys.argv[2]).read().split():
    s, o = (int(x, 16) for x in l.split(':'))
    relocs.add(s * 16 + o)
extra = [tuple(int(x, 16) for x in e.split(':')) for e in sys.argv[4:]]

tmp = tempfile.NamedTemporaryFile(delete=False, suffix='.bin')
tmp.close()

insns = {}        # linear -> dict
owner = {}        # linear byte -> start of insn
labels = {}       # linear -> set of kinds
segof = {}        # linear -> seg

LINE = re.compile(r'^([0-9A-F]{8})\s+([0-9A-F]+)\s+(.*)$')
TERM = re.compile(r'^(ret|retf|iret|iretd|jmp|hlt)\b')
REL = re.compile(r'^(j\w+|loop\w*|jcxz|jecxz|call)\s+(?:short |near |word |dword )?(0x[0-9a-f]+)$')
FAR = re.compile(r'^(call|jmp)\s+(?:far )?(0x[0-9a-f]+):(0x[0-9a-f]+)$')


def decode(lin, off, n=0x400):
    end = min(len(img), lin + n)
    with open(tmp.name, 'wb') as f:
        f.write(img[lin:end])
    out = subprocess.run(['ndisasm', '-b16', '-o', str(off), tmp.name],
                         capture_output=True, text=True).stdout
    res = []
    for line in out.splitlines():
        m = LINE.match(line)
        if not m:
            # continuation line for long instructions (hex only)
            if res and line.strip().startswith('-'):
                res[-1][1] += line.strip()[1:]
            continue
        res.append([int(m.group(1), 16), m.group(2), m.group(3)])
    return res


def add_label(lin, kind, seg):
    labels.setdefault(lin, set()).add(kind)
    segof.setdefault(lin, seg)


q = deque()
q.append((0, 0, 'entry'))
for s, o in extra:
    q.append((s, o, 'extra'))

while q:
    seg, off, kind = q.popleft()
    lin = seg * 16 + off
    if lin < 0 or lin >= len(img):
        continue
    add_label(lin, kind, seg)
    while True:
        if lin in insns:
            break
        if lin in owner:
            print('overlap at %05x (%04x:%04x)' % (lin, seg, off), file=sys.stderr)
            break
        block = decode(lin, off)
        if not block:
            break
        stop = False
        for a, hx, txt in block:
            l2 = seg * 16 + a
            ln = len(hx) // 2
            if l2 + ln > len(img):
                stop = True; break
            if l2 in insns or any((l2 + i) in owner for i in range(ln)):
                stop = True; break
            if txt.startswith('db ') or txt.startswith('(bad)'):
                print('bad decode at %05x (%04x:%04x): %s' % (l2, seg, a, txt), file=sys.stderr)
                stop = True; break
            ins = dict(lin=l2, seg=seg, off=a, hex=hx, text=txt)
            insns[l2] = ins
            for i in range(ln):
                owner[l2 + i] = l2
            m = FAR.match(txt)
            if m:
                ts, to = int(m.group(2), 16), int(m.group(3), 16)
                ins['far'] = [ts, to]
                q.append((ts, to, 'far' + m.group(1)))
            else:
                m = REL.match(txt)
                if m:
                    t = int(m.group(2), 16) & 0xffff
                    ins['target'] = seg * 16 + t
                    q.append((seg, t, 'call' if m.group(1) == 'call' else 'jump'))
            if TERM.match(txt):
                stop = True; break
            lin, off = l2 + ln, a + ln
        if stop:
            break
        # continue decoding past block end
        last = block[-1]
        # recompute lin/off from last fully processed insn
        if seg * 16 + last[0] in insns:
            ln = len(last[1]) // 2
            off = last[0] + ln
            lin = seg * 16 + off
        else:
            break

os.unlink(tmp.name)
json.dump(dict(insns=sorted(insns.values(), key=lambda x: x['lin']),
               labels={k: [sorted(v), segof[k]] for k, v in labels.items()}),
          open(sys.argv[3], 'w'))
segs = sorted(set(i['seg'] for i in insns.values()))
print('insns', len(insns), 'code bytes', len(owner), 'labels', len(labels))
print('segments with code:', ' '.join('%04x' % s for s in segs))
