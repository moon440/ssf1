// Builds ssf1.html: one file, no network. Embeds ruffle.js + both wasm cores
// (SIMD + baseline) + the SWF as base64; a fetch shim hands the wasm blobs to
// Ruffle when it asks for "./ruffle_web*.wasm". file:// works in every modern
// browser that supports WebAssembly (SIMD build is picked automatically where
// available, baseline everywhere else).
//
// Personal/preservation use only. Nintendo + McLeodGaming own the content.

import { readFileSync, writeFileSync } from "node:fs"

const b64 = (p) => readFileSync(p).toString("base64")

const ruffleJs = readFileSync("ruffle/ruffle.js", "utf8")
const wasmSimd = b64("ruffle/ruffle_web_bg.PBF26GHG.wasm")
const wasmMvp = b64("ruffle/ruffle_web-wasm_mvp_bg.RBLKBOTU.wasm")
const swf = b64("SuperSmash.swf")

const html = `<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Super Smash Flash (2006) - preserved single-file build</title>
<style>
  html,body{margin:0;height:100%;background:#111;color:#eee;font:14px/1.4 system-ui,sans-serif}
  #wrap{display:flex;align-items:center;justify-content:center;height:100%}
  ruffle-player{width:100%;height:100%;max-width:1200px;max-height:900px}
  #boot{position:fixed;inset:0;display:flex;align-items:center;justify-content:center;background:#111}
  #boot.hidden{display:none}
</style>
</head>
<body>
<div id="boot">Decompressing Flash...</div>
<div id="wrap"></div>
<script id="assets">
const PAYLOADS = {
  wasm: ${JSON.stringify(wasmSimd)},
  wasmMvp: ${JSON.stringify(wasmMvp)},
  swf: ${JSON.stringify(swf)}
};
</script>
<script>
function b64ToBlob(s, type){
  const bin = atob(s);
  const bytes = new Uint8Array(bin.length);
  for (let i = 0; i < bin.length; i++) bytes[i] = bin.charCodeAt(i);
  return new Blob([bytes], { type });
}
const wasmBlob = b64ToBlob(PAYLOADS.wasm, "application/wasm");
const wasmMvpBlob = b64ToBlob(PAYLOADS.wasmMvp, "application/wasm");
const swfUrl = URL.createObjectURL(b64ToBlob(PAYLOADS.swf, "application/x-shockwave-flash"));

// Ruffle fetches its wasm core by URL; answer from the embedded blobs.
const realFetch = window.fetch.bind(window);
window.fetch = function(url, opts){
  const u = String(url);
  if (u.includes("ruffle_web-wasm_mvp_bg")) return Promise.resolve(new Response(wasmMvpBlob.slice(0), { status: 200, headers: { "Content-Type": "application/wasm" } }));
  if (u.endsWith(".wasm") || u.includes("ruffle_web_bg")) return Promise.resolve(new Response(wasmBlob.slice(0), { status: 200, headers: { "Content-Type": "application/wasm" } }));
  return realFetch(url, opts);
};
</script>
<script>${ruffleJs.replace(/<\/script>/gi, "<\\/script>")}</script>
<script>
(async () => {
  const RufflePlayer = window.RufflePlayer || {};
  let newest;
  try { newest = RufflePlayer.newest(); } catch (e) { newest = RufflePlayer; }
  const player = newest.createPlayer();
  document.getElementById("wrap").appendChild(player);
  await player.load({ url: swfUrl, allowScriptAccess: "sameDomain" });
  document.getElementById("boot").classList.add("hidden");
})().catch((err) => {
  document.getElementById("boot").textContent = "Failed to start: " + err;
});
</script>
</body>
</html>
`

writeFileSync("ssf1.html", html)
console.log("ssf1.html written:", (Buffer.byteLength(html) / 1048576).toFixed(1), "MB")
