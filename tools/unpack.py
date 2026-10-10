#!/usr/bin/env python3
"""Unpack the PKLITE-compressed AIRFRAME.EXE.

usage: unpack.py original/AIRFRAME.EXE build/
Produces build/airframe_unpacked.img (load image), build/AIRFRAME_UNP.EXE
(runnable unpacked MZ) and build/relocs.txt. Needs gcc to build unpklite.
"""
import os, struct, subprocess, sys
here = os.path.dirname(os.path.abspath(__file__))
src, outd = sys.argv[1], sys.argv[2]
os.makedirs(outd, exist_ok=True)
exe = os.path.join(outd, 'unpklite')
subprocess.run(['gcc', '-O2', '-w', '-o', exe, os.path.join(here, 'unpklite.c')], check=True)
img_path = os.path.join(outd, 'airframe_unpacked.img')
r = subprocess.run([exe, src, img_path], capture_output=True, text=True, check=True)
size, p = (int(x) for x in r.stdout.split())
d = open(src, 'rb').read()
rel = []
while True:                     # PKLITE large-model relocation table
    n = d[p]; p += 1
    if n == 0:
        break
    seg = struct.unpack_from('<H', d, p)[0]; p += 2
    for _ in range(n):
        rel.append((seg, struct.unpack_from('<H', d, p)[0])); p += 2
ss, sp, cs, ip = struct.unpack_from('<4H', d, p); p += 8
assert p == len(d), 'trailing bytes after PKLITE footer: %d' % (len(d) - p)
assert (ss, sp, cs, ip) == (0x2f14, 0x2000, 0, 0), (ss, sp, cs, ip)
open(os.path.join(outd, 'relocs.txt'), 'w').write('\n'.join('%04x:%04x' % r for r in rel) + '\n')
subprocess.run([sys.executable, os.path.join(here, 'mkexe.py'), img_path,
                os.path.join(outd, 'relocs.txt'), os.path.join(outd, 'AIRFRAME_UNP.EXE')], check=True)
print('image %d bytes, %d relocations, SS:SP=%04x:%04x CS:IP=%04x:%04x' % (size, len(rel), ss, sp, cs, ip))
