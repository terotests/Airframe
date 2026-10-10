#!/usr/bin/env python3
"""Assemble each non-branch instruction alone (nasm -O0) and list those whose bytes differ."""
import json, re, subprocess, sys, tempfile, os
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from fixtext import fix
D = json.load(open(sys.argv[1]))
skip = re.compile(r'^(j\w+|loop\w*|jcxz|jecxz|call|jmp)\b')
todo = [i for i in D['insns'] if not skip.match(i['text']) or ('far' in i)]
tmpd = tempfile.mkdtemp()
src = ['bits 16', 'cpu 386']
for k, i in enumerate(todo):
    src.append('i%d: %s' % (k, fix(i['text'], i['hex'])))
src.append('iend:')
open(tmpd + '/c.asm', 'w').write('\n'.join(src) + '\n')
r = subprocess.run(['nasm', '-O0', '-f', 'bin', '-o', tmpd + '/c.bin', '-l', tmpd + '/c.lst', tmpd + '/c.asm'],
                   capture_output=True, text=True)
errlines = set()
for l in r.stderr.splitlines():
    m = re.search(r':(\d+): error', l)
    if m:
        errlines.add(int(m.group(1)) - 3)
# parse listing: collect bytes per source line
lst = open(tmpd + '/c.lst').read().splitlines() if os.path.exists(tmpd + '/c.lst') else []
by = {}
cur = None
for l in lst:
    m = re.match(r'^\s*(\d+)\s+([0-9A-F]{8})\s+([0-9A-F\[\]()]+)(-?)\s*(.*)$', l)
    if m:
        ln = int(m.group(1)); hx = re.sub(r'[\[\]()]', '', m.group(3))
        by.setdefault(ln, '')
        by[ln] += hx
bad = []
for k, i in enumerate(todo):
    ln = k + 3
    if k in errlines or by.get(ln, '').upper() != i['hex'].upper():
        i['blen'] = -1 if k in errlines else len(by.get(ln, ''))//2
        bad.append(i)
diffl=[b for b in bad if b['blen']!=len(b['hex'])//2]
print('length-changing', len(diffl), file=sys.stderr)
json.dump({'%x'%b['lin']:b['blen'] for b in bad}, open(sys.argv[2]+'.json','w'))
print('checked', len(todo), 'bad', len(bad), file=sys.stderr)
for i in [b for b in bad if b.get("blen")!=len(b["hex"])//2][:int(sys.argv[3]) if len(sys.argv) > 3 else 0]:
    print('%05x %-30s %s | %s' % (i['lin'], i['hex'], i['text'], fix(i['text'],i['hex'])), file=sys.stderr)
open(sys.argv[2], 'w').write('\n'.join('%x' % i['lin'] for i in bad))
