RECOVERY NOTES
==============

METHOD
------
Input: SuperSmash.swf, 8,833,126 bytes, SHA-verifiable against the
archive.org copy (item `supersmashflash_swf`, uploaded by the original
publisher).

Tool: JPEXS Free Flash Decompiler (FFDec) 26.4.0, headless:

    java -jar ffdec.jar -onerror ignore -export script export_scripts SuperSmash.swf

Result: 5,298 script records, zero export errors, 1m44s. Scripts are
under scripts/, organised by SWF tag, not by the original project
folders (those died with the .fla):

    DefineSprite_3565/frame_2/PlaceObject3_2950_3/CLIPACTIONRECORD onClipEvent(load).as
    DefineButton2_2217/BUTTONCONDACTION on(release).as
    frame_6/DoAction.as
    root/DoAction.as

WHAT SURVIVES (and why)
-----------------------
AVM1 (ActionScript 1/2 bytecode) stores identifiers, string literals,
and function names in a constant pool -- Flash never stripped them.
So variable names, function names, and all logic are recovered as
written. The 174 KB per-character `onClipEvent(load)` blocks ARE the
combat engine: each character's move table assembled at runtime.

WHAT IS LOST (permanently, in any decompiler)
---------------------------------------------
1. Comments. Never present in the SWF.
2. Whitespace and formatting. Reconstructed in decompiler idiom.
3. The .fla: timeline structure, layer names, folder organisation,
   library naming. Frame numbers and tag IDs are the only map left.
4. Author-side build tooling (if any).

FIDELITY: expect ~95% semantic equivalence to the 2006 sources, with
the caveats above. A file here that looks odd is usually the decompiler
re-expressing AVM1 register style, not a transcription error. Verify
against the .swf before "fixing" anything.

ANALYSIS FINDINGS
-----------------
- frame_6/DoAction.as: MochiBot analytics bootstrap (mochibot.com,
  dead since ~2015). Loads nothing today; harmless. Left as recovered.
- Several buttons getURL() to mcleodgaming.com forums and armorgames.
  Historical links, left intact.
- No other network calls. The game is fully self-contained in one SWF.

RUNNING IT
----------
See INSTALL. Short version: Ruffle (MIT/Apache, upstream) executes the
original .swf byte-for-byte in WebAssembly; tools/build-singlefile.mjs
folds Ruffle + the .swf into one 48 MB HTML that runs from disk with
zero network. Verified 2026-10-26: title screen renders, WASM SIMD
extensions ON, renderer wgpu-webgl.

WHAT IS NOT HERE, AND WHY IT WILL NOT BE ADDED
----------------------------------------------
The .swf itself, extracted sprites, sounds, fonts, and the built
ssf1.html. The characters and music inside belong to Nintendo and
others; an AGPL grant over code cannot cover them, and this repo's
legality rests on that line. Issues asking to "just add the swf" or
"add the sprites" will be closed with a link to this paragraph.
