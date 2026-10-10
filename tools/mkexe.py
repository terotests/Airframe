#!/usr/bin/env python3
"""Wrap the flat image assembled from airframe.asm into a DOS MZ executable.

usage: mkexe.py airframe.img relocs.txt AIRFRAME.EXE
relocs.txt lists seg:off of each word that DOS must fix up with the load
segment (taken from the original executable). Header values match the
PKLITE-unpacked original: SS:SP = 2F14:2000, CS:IP = 0000:0000.
"""
import struct, sys
img = open(sys.argv[1], 'rb').read()
rel = [tuple(int(x, 16) for x in l.split(':')) for l in open(sys.argv[2]).read().split()]
SS, SP, CS, IP, MINALLOC = 0x2f14, 0x2000, 0, 0, 358
hdrpar = (0x1c + 4 * len(rel) + 15) // 16
hdrpar = (hdrpar + 31) // 32 * 32
tot = hdrpar * 16 + len(img)
h = struct.pack('<14H', 0x5a4d, tot % 512, (tot + 511) // 512, len(rel), hdrpar,
                MINALLOC, 0xffff, SS, SP, 0, IP, CS, 0x1c, 0)
h += b''.join(struct.pack('<HH', o, s) for s, o in rel)
open(sys.argv[3], 'wb').write(h.ljust(hdrpar * 16, b'\0') + img)
print('wrote', sys.argv[3], tot, 'bytes,', len(rel), 'relocations')
