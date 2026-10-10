#!/bin/sh
# Regenerate src/ from the original executable (overwrites src/airframe.asm!).
# Only needed when improving the disassembler; normal work edits src/ directly.
set -e
cd "$(dirname "$0")"
python3 tools/unpack.py original/AIRFRAME.EXE build >/dev/null
python3 tools/rdis.py build/airframe_unpacked.img build/relocs.txt src/disasm.json 3d:d3 71:40
python3 tools/gen.py build/airframe_unpacked.img src/disasm.json src
cp build/relocs.txt src/relocs.txt
