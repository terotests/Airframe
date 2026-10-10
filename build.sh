#!/bin/sh
# Rebuild AIRFRAME.EXE from src/airframe.asm and verify it against the original.
# Requires: nasm, gcc (for the PKLITE unpacker), python3, ndisasm (verification).
set -e
cd "$(dirname "$0")"
mkdir -p build
# 1. reference: unpack the original PKLITE executable
python3 tools/unpack.py original/AIRFRAME.EXE build >/dev/null
# 2. assemble the reconstructed source
(cd src && nasm -O0 -f bin -l ../build/airframe.lst -o ../build/airframe.img airframe.asm)
python3 tools/mkexe.py build/airframe.img src/relocs.txt build/AIRFRAME.EXE
# 3. verify: same size/data, every instruction decodes identically
python3 tools/semverify.py build/airframe_unpacked.img build/airframe.img src/lineinfo.json src/disasm.json
