# Airframe — reconstructed source

**Airframe** by **PRIME**, the winning PC intro of Assembly '94. 386 real mode,
VGA, music on the Gravis Ultrasound only. The credits name Jussi Lahdenniemi and
Lasse Moisio. The end text dedicates it to a member of PRIME who died in a
traffic accident the winter before.

This repository rebuilds the intro from its original executable as NASM source
that assembles back into a working `AIRFRAME.EXE`.

## Status

| Step | State |
|---|---|
| Unpack PKLITE 1.12 (large model) | done, the relocation table and entry registers parse exactly to the end of the file |
| Find all code (recursive descent from entry, INT 8 and INT 9 handlers) | 7,554 instructions, 22.8 KB of code in 21 segments |
| Reassemblable source (`src/airframe.asm`) | done, rebuilds to the same size with identical data |
| Verification | every instruction decodes identically to the original (`build.sh`) |
| Names and comments for routines and variables | **not started**, labels are still `sub_SEG_OFF` / `l_SEG_OFF` |
| Splitting the data (music, samples, 3D objects, font) | **not started**, still raw `incbin` blobs |

### About "identical"

The rebuilt image matches the original byte for byte except in 1,104
instructions. Those are cases where TASM and NASM pick different but equivalent
encodings of the same instruction:

- register-to-register forms: `33 C0` vs `31 C0` are both `xor ax,ax`
- prefix order: `66 2E` vs `2E 66`

Each one has the same length and disassembles to the same text. No
self-modifying writes into code were found, so these differences shouldn't
change behaviour. Running it in DOSBox is the final check and hasn't been done
yet.

## Layout

```
original/AIRFRAME.EXE   the released, PKLITE-packed intro (60,577 bytes)
src/airframe.asm        reconstructed source, one NASM section per 16-bit segment
src/data/*.bin          data blocks (incbin)
src/relocs.txt          353 segment fixups for the MZ header
src/disasm.json         disassembler output used for verification / regeneration
tools/                  unpacker, disassembler, source generator, EXE builder, verifier
build.sh                assemble + build EXE + verify against the original
regen.sh                regenerate src/ from the original (overwrites edits!)
```

## Building

Requires `nasm`, `gcc`, `python3`, and `ndisasm` (comes with nasm).

```
./build.sh        # -> build/AIRFRAME.EXE
```

To run it, use DOSBox with the GUS enabled (`[gus] gus=true`, `ultrasnd=240,3,3,5,5`).

## How the source is organised

Each original segment is a NASM `section ... vstart=` block, so near labels are
segment-relative offsets as in the original. Far calls keep the original
segment numbers (`call 0x0071:far_0071_000c`). DOS fixes these up at load time
through `src/relocs.txt`. The trailing `; SEG:OFF` comment on every line is the
address in the original program.

Inserting or removing code is not possible yet. The segment numbers and the
relocation table are still absolute, so code can't move. To make the source
freely editable, the next step is to make segments and data references symbolic
(`seg label`) and produce the MZ header from the assembler/linker instead of
`mkexe.py`.

## Segment map (first pass)

| Segment | Role (from I/O ports and instruction mix) |
|---|---|
| 0000 | main: startup, memory resize, effect sequencing |
| 0027 | VGA unchained/mode-X setup (3C4, 3CE, 3D4) |
| 0033 | palette upload and fades (3C7–3C9) |
| 003D | INT 8 timer handler, vertical retrace sync (3DA) |
| 0071 | INT 9 keyboard handler |
| 0076, 0113, 0249 | effect routines |
| 0353 | 3D transforms (IMUL-heavy) |
| 03E6 | 3D projection and polygon fill (IMUL/IDIV) |
| 0738 | drawing using FS/GS buffers |
| 07CC | text and font output |
| 20C1 | Gravis Ultrasound player (base+103h/105h/107h, DRAM upload) |
| 2314 | data segment (DS) |

The 109 KB block `src/data/d_07ee4.bin` holds the GUS samples (named Airfix,
Bkick2, Kohina, Lowmatto, …), the song, tables and the end texts.

## Tools

- `tools/unpklite.c` is a PKLITE decompressor derived from
  [depklite](https://github.com/NY00123/refkeen) / OpenTESArena (MIT, see
  `tools/LICENSE-depklite.txt`). `tools/unpack.py` wraps it and rebuilds the MZ
  header.
- `tools/rdis.py` does recursive-descent disassembly on top of ndisasm and
  tracks `seg:off` across far calls.
- `tools/fixtext.py` rewrites ndisasm syntax so NASM produces the same
  instruction lengths as TASM did (forced `word`/`byte` displacements, 32-bit
  addressing).
- `tools/gen.py` generates the NASM source, `tools/mkexe.py` builds the EXE,
  and `tools/semverify.py` checks the rebuild.
