HOSTING NOTES
=============

Layout on neocities (newsgood):

    SuperSmash/index.html   the 48 MB single-file bundle (play URL)
    download.html           the download/landing page (site/download.html)

The download link uses the same-origin `download` attribute, so
clicking it saves the file instead of opening a second copy.

BANDWIDTH: 48 MB per visitor. Neocities free tier is 50 GB/month --
that is roughly 1,000 plays a month before the site goes dark. If the
traffic matters, either upgrade, or also host the slim variant: same
builder with the wasm payloads fetched from a CDN instead of embedded
(~12 MB page, needs internet on first run). Ask, it is a 20-line diff.

Rebuilding the bundle from scratch: see INSTALL. Nothing in the build
uploads anywhere; publishing is a manual copy of two files.
