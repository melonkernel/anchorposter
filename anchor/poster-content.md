# Poster: Anchor — industry edition

> A1 landscape Better-Poster. This file describes what's currently on
> the poster (`better-poster.tex`) plus the open questions. The .tex is
> the source of truth — when something here doesn't match, the .tex wins.

## Audience & framing

Vaasa industry session, 2026 — Finnish maritime / ship-tech /
simulation / automation companies. **Not** academics; they don't read
paragraphs. The whole booth has ~30 seconds per visitor.

Anchor is **software, not a thesis**. It's the only of the three
posters where industry can plausibly say "can we try it?" right at the
booth. The QR/URL must therefore land them somewhere they can *see it
work* — currently the GitHub repo.

Reference docs that drive the copy:
- `~/dev/ai/novia/anchor-kb-ui-RAG/docs/plan.md` — the v2 architecture refactor plan; this is the post-refactor framing the poster commits to.
- `~/dev/ai/novia/anchor-kb-ui-RAG/posters/for-industry.md` — companion 1900-word industry brief (sister doc, talking-points sheet for the booth table).

## Top bar (sub-hero)

Black band across the full width of the poster, ~55 mm tall.

- **Anchor mark** (white SVG → PDF) + **wordmark "Anchor"** (Montserrat Bold, 52pt)
- Tagline: **Two MCP tools. Datasheets in, grounded answers out.**
- Right side: Novia logo (white). **No ÅA logo on this poster.**

## Big takeaway (centre, the heroic line)

> **Every spec your agent quotes points back to the \hl{page it came from}.**

Highlighted phrase: *page it came from*. Sized at 78pt, three lines.

Subline below it (~22pt):
> Datasheet → canvas → simulation. *Provenance built in.*

## Centre band (below the takeaway)

Hand-drawn architecture diagram at
`figures/architecture-v2-inverted.png` (sourced from
`paperx/figures/anchor_v2_architecture_inverted.png`). Minimal v2
variant — reads at 3+ m booth distance.

Shows: `v2/` outer container, three substrate boxes (DOCS / CANVASES /
SESSION) on row 1, two service boxes (INGEST with CLI/MCP, CANVAS
with HTTP/MCP/SSE) on row 2, `drop-to-ingest` arrow between the
services, and three peer consumers below (AGENT / IN-APP AGENT /
ENGINEER).

Title inside the diagram: *"ANCHOR · v2 — Monorepo starter. Two services. Three substrates. One contract."*

Footer inside the diagram: *"Provenance lives in gold — every region carries page + bbox."*

## Authors / contact (top of left column)

- **Christoffer Björkskog** · christoffer.bjorkskog@novia.fi
- **Lamin Jatta** · Maritime Technology, Novia UAS
- **Supervisors:** Andreas Lundell (ÅAU), Johan Westö (Novia UAS), Mikael Manngård (Novia UAS).

## LEFT panels

### PROBLEM
Engineers transcribe values from datasheets, P&ID drawings, and
control-system manuals into spreadsheets and simulators by hand.
Free-text RAG hides the citation; one mis-transcribed parameter lands
in a safety calculation with no way back to the source page.

### ARCHITECTURE
Two MCP services over three folders on disk:
- **DOCS** — bronze (raw PDFs) → silver (page layout + text) → gold (regions with page + bbox).
- **CANVASES** — one folder per canvas. Share like a file.
- **SESSION** — live state in memory; the same JSON drives every UI.

`IngestService` turns PDFs into the gold layer. `WorkspaceService`
records every canvas action as a versioned event. Both speak MCP,
HTTP, and SSE.

### WHAT v0.1 SHIPS
- **17 MCP commands** — 6 ingest, 11 canvas. Claude Code, Cursor, or your own agent drives the same data.
- **Web UI in the same backend.** Drop a PDF; ingest progress streams to every browser tab and agent.
- **~100 ms multi-client sync** between agents and browsers.

(Footer of left column: small line "Novia University of Applied Sciences".)

## RIGHT panels

### THE CANVAS
Real screenshot at `screenshots/ui_overview.png` — the v1 vanilla-JS
canvas, since v2's React frontend has only ported 5/19 node renderers
so far. Caption underneath:

> Question top. Cards carry source crops with one-click jump to the
> PDF region. Right rail: bronze → silver → gold ingestion of the
> active datasheet.

### SELF-HOSTED
- Runs on a laptop, server, or air-gapped PC. No cloud account, no telemetry.
- Each canvas is a folder. Copy, share, version-control.
- Open source.

### READ MORE
- QR target: `https://github.com/Novia-RDI-Seafaring/anchor-kb-ui-RAG`
- Readable URL line below the QR.

## Footer line (centre, bottom of dark band)

> Funded by Business Finland · Co-Innovation Project Virtual Sea Trial · virtualseatrial.fi
> Novia UAS · Åbo Akademi University

## Visual identity

- **Top bar:** flat black, 55 mm.
- **Centre band:** `assets/cruise_grad.png` (aerial cruise ship → fades to dark sea at the bottom). The architecture diagram sits on the dark sea below the takeaway; cruise ship sits at the top of the band.
- **Side panels:** warm cream `#F2EFE8`.
- **Accent:** warm orange `#FF8E2B` — used for the highlighted takeaway phrase, panel-head rules, and the orange evidence box visible in the datasheet screenshot.
- **Fonts:** Open Sans (body), Montserrat (headings + wordmark), Montserrat Black (big takeaway).
- **Logo files** in `anchor/`: `logo.png` (black raster), `anchor-black.svg/.pdf`, `anchor-white.svg/.pdf`. White PDF goes on the dark top bar.

## Open questions (still TBD)

- **License** — repo is currently un-licensed (TBD per `paperx/main.tex`). Visitors at the booth will ask. MIT or Apache-2.0?
- **QR target** — currently the GitHub repo. Is there a `v0.2.0` tag visitors can clone the moment they scan? If not, fix the README's quickstart so a Mac with `uv` and `pnpm` installs cleanly. Otherwise the QR is a research-quality landing instead of a working demo.
- **Right-column screenshot** — `screenshots/ui_overview.png` is the v1 canvas. Replace with v2 React shot once Phase 9 lands (document workflow + region overlay). Until then, the v1 shot is honest and matches the caption.
- ~~**Architecture diagram** — currently uses `figures/architecture.png` (= paperx v7). Plan §J calls for a redrawn `anchor_v2_architecture_inverted.png` that's minimal (3 substrates, 2 services, 3 peers) for booth-distance reading. Swap the .tex line when the redraw lands.~~ **Done** — swapped to `architecture-v2-inverted.png`. Old `architecture.png` retained in `figures/` as a fallback.

## Things that were tried and removed (don't reintroduce)

- **Cute footer asides** — "USB stick at the booth: bring a PDF, leave with a canvas." and "git clone on Monday morning." Both removed for being copywriter-cute. If they come back, they need to earn it.
- **Three-step flow strip** (datasheet thumbnail → canvas card → FMU/pump-curve schematic) — replaced by the architecture diagram. The takeaway already says "datasheet → canvas → simulation" in words; the architecture diagram does the visual work.
- **"What industry gets" panel** — renamed to SELF-HOSTED with tighter, deduplicated bullets (the MCP-claim now lives only in WHAT v0.1 SHIPS, not in two panels).
- **Lineage panel** (Maritime Pipeline / Course KB / Saaristo cross-references) — removed from this poster; that framing belongs on the academic / research-plan posters next door, not on the industry pitch.
- **ÅA logo on the centre band** — Anchor uses Novia only on this poster.
- **Per-bullet implementation chatter** — "Vite + React UI served by FastAPI", "server-authoritative + optimistic local UI", "starter monorepo / clone for next agent-first project". Industry visitors don't care; cut.

## Build

From this folder:
```bash
make            # builds better-poster.pdf (XeLaTeX via latexmk)
make watch      # latexmk -pvc, rebuilds on save
make clean      # removes intermediates
```

Render to PNG to view inline:
```bash
sips -s format png --resampleWidth 2000 better-poster.pdf --out /tmp/anchor-poster.png
```
