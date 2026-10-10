#!/usr/bin/env python3
"""Verify rebuilt image: identical size, and every differing instruction decodes to the same text."""
import json, subprocess, sys, tempfile
orig = open(sys.argv[1], 'rb').read(); new = open(sys.argv[2], 'rb').read()
info = json.load(open(sys.argv[3])); D = json.load(open(sys.argv[4]))
txt = {i['lin']: (i['text'], i['off']) for i in D['insns']}
assert len(orig) == len(new), ('size', len(orig), len(new))
covered = set(); diffs = []
for li, lin, ln in info:
    covered.update(range(lin, lin + ln))
    if orig[lin:lin+ln] != new[lin:lin+ln]:
        diffs.append((lin, ln))
outside = [k for k in range(len(orig)) if orig[k] != new[k] and k not in covered]
bad = 0
f = tempfile.NamedTemporaryFile(delete=False); f.close()
for lin, ln in diffs:
    open(f.name, 'wb').write(new[lin:lin+ln])
    o = subprocess.run(['ndisasm', '-b16', '-o', str(txt[lin][1]), f.name], capture_output=True, text=True).stdout.splitlines()
    o = [l for l in o if not l.strip().startswith('-')]
    t = o[0].split(None, 2)[2] if len(o) == 1 else '?'
    if t != txt[lin][0]:
        bad += 1; print('SEMANTIC DIFF %05x: %s  vs  %s' % (lin, txt[lin][0], t))
print('size ok; byte-different insns %d; data bytes differing %d; semantic mismatches %d' % (len(diffs), len(outside), bad))
