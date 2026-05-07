# For agents contributing to the Anchor poster

You probably arrived here because Toffe asked you to "help with the
Anchor poster." You know the Anchor codebase (you live in
`~/dev/ai/novia/anchor-kb-ui-RAG/`); you don't necessarily know the
poster. This file is the bridge.

Read it end-to-end before touching anything. Then do the smallest
useful thing.

## What this is

A **single A1 landscape "better-poster"** for the **Vaasa industry
session, 2026** (Virtual Sea Trial / Business Finland presentation
day). Audience: Finnish maritime / ship-tech / simulation / automation
companies. They are *not* academics. They will spend ~5 seconds on the
takeaway and ~30 seconds on the supporting strip if it earns it.

The poster sits next to two PhD research-plan posters (Lamin's, Toffe's).
Anchor's role in that booth is the **only one industry can plausibly say
"can we try it?" to right now** — because it's working software, not a
thesis. Lead with that.

The committed artefacts:

- `better-poster.tex` — the LaTeX source. Compiles to A1 landscape via XeLaTeX.
- `poster-content.md` — Toffe's editorial brief (titles, takeaway candidates, panel content, visual notes). **Read this first**. The .tex implements a subset of it.
- `screenshots/` — real product screenshots, used as-is.
- `generated/` — line-art / illustration drafts (currently from `gemini-image-generator`). Treated as drafts unless promoted.
- `Makefile`, `.latexmkrc` — `make` builds the PDF.

## Who you are

You are an agent (Claude Code, Codex, Cursor, etc.) spawned **inside
the Anchor repo** at `~/dev/ai/novia/anchor-kb-ui-RAG/`. That repo
has its own `CLAUDE.md` — read it. You know the medallion pipeline,
the MCP tools, the agent backend, the canvas, the FMU integration,
the paper drafts.

What you have that the poster-side agent doesn't: **ground truth**.
You can answer "is this still true?" by reading the code. The poster
draft was written some weeks ago; the code may have moved.

## What we want from you (in priority order)

### 1. Truth-check the existing draft

Open `poster-content.md` and `better-poster.tex` and verify each
factual claim against the live code. Flag (don't silently fix) any
of these:

- The **OUTCOMES / WHAT'S BUILT** section currently lists
  `anchor-ingest` (MCP) + `anchor-canvas` (MCP) + a human Next.js
  canvas UI converging onto the same MCP surface. **Is that still the
  shape of the system?** Have packages been renamed, merged, or
  added? Are both MCP servers actually shipping in v0.1.0?
- The **DEMO** sentence claims "Alfa Laval LKH datasheet → canvas spec
  table → wired into an FMU simulation, every value one click from
  source page." **As of when you read this, is the FMU wiring
  end-to-end real, or is it agent-tool-exists-but-no-proven-workflow?**
  If it's the latter, propose softer wording — Anchor's whole pitch is
  provenance, so the poster cannot oversell.
- The **QR target** is `https://github.com/Novia-RDI-Seafaring/anchor-kb-ui-RAG`. Is the repo public? Does it have a v0.1.0 tag, a working README, install instructions a visitor could follow on their laptop? If not, fix the README first or recommend a different QR target (a demo deployment URL, a docs site).
- The **license** is "TBD" in both papers. If it's been chosen, update
  the brief.
- The **contributors** list (Christoffer Björkskog, Lamin Jatta,
  supervisors). The papers are currently anonymous. Confirm names +
  affiliations from git log + any non-anonymous draft.

### 2. Propose a tighter background blurb

Currently the BACKGROUND section says "Engineers spend a real share
of their day searching technical PDFs — datasheets, leaflets,
control-system manuals, P&ID drawings. RAG hallucinates and obscures
provenance."

That's fine, but you can probably do better in **≤55 words** using
the abstract from `paperx/main.tex`. Drop a candidate at the bottom
of `poster-content.md` under a `## Proposed background (from <agent name>)` heading. **Don't edit the .tex.** Toffe picks.

### 3. Three takeaway candidates

Current line: *"Every spec your agent quotes points back to the page it came from."*

Pitch up to three alternatives. Constraints: ≤8 words on each of up
to 3 lines, one phrase highlighted with `\hl{...}` (orange). Optimise
for Finnish industry visitors reading at distance, not for academic
peers. Backup wordings already considered are at the top of
`poster-content.md` — don't repeat them, push past them.

### 4. Suggested screenshots we *don't* have

`screenshots/` currently contains:

- `ui_overview.png` — full canvas, busy
- `grounded_canvas.png` — answer card with crops
- `datasheet_page2_highlighted.png` — real PDF with provenance highlight
- `medallion_panel.png` — bronze/silver/gold sidebar

If something better exists in your codebase (a cleaner canvas with
the LKH spec table populated, an FMU node wired into the canvas, a
terminal recording of an MCP tool call sequence, the paper's TikZ
graphical abstract rendered to PNG), drop it as a PNG in
`screenshots/` with a self-describing name and add a one-line entry
to `poster-content.md` under a `## Proposed screenshots` heading
explaining what it shows and where it could go.

**Image specs that work in the layout:**

- ≥1500 px wide, PNG, no transparency
- Landscape ~16:9 reads best in the right column "THE CANVAS" slot
- Portrait works in the centre flow strip's first panel (datasheet position)
- Tight crop around the meaningful content, no browser chrome unless that *is* the point

### 5. Contribute a real "simulation" panel for the centre flow strip

The centre band has a 3-panel flow strip: **datasheet → canvas → simulation**. The third panel is currently a small TikZ schematic (FMU box + pump curves) because no real screenshot exists. If a real FMU run produces a useful visual (a result plot, a populated FMU node, an FMI-3 inspector view), drop it in `screenshots/` as `simulation_*.png` and propose it as a replacement.

If the FMU integration genuinely isn't ready for a screenshot, **say so** in `poster-content.md` and we keep the TikZ. Honest is better than a generated mock.

## What you must NOT do

- **Don't edit `better-poster.tex` directly.** Toffe owns the layout. Propose copy / images, he integrates. (Exception: if you find a typo or a bad math expression, fix that.)
- **Don't generate AI illustrations for final poster assets.** The poster is *about provenance*. Fake "simulation screenshots" or AI-generated technical diagrams undercut the message and would be embarrassing if a visitor asked "where's that screenshot from?" Line-drawing brainstorm sketches in `generated/` are fine for *internal review only*.
- **Don't add new sections.** The layout is full. Anything you add has to displace something else, and that's a Toffe decision.
- **Don't change colors, fonts, geometry, or the cruise-ship background.** Visual identity is locked. Centre band is dark teal sea (`assets/cruise_grad.png`), accent is warm orange `#FF8E2B`, side panels are warm cream. If you have strong feelings, write them up; don't act on them.
- **Don't commit anything.** This is Toffe's working repo. Leave changes uncommitted and tell him what you did.

## Where things live (cheat sheet)

| Path | What it is |
|---|---|
| `poster-content.md` | Editorial source of truth — read first, propose changes here |
| `better-poster.tex` | LaTeX source — Toffe-only |
| `screenshots/` | Real product screenshots — drop new ones here |
| `generated/` | AI brainstorm sketches — drafts only, never final |
| `Makefile` | `make` builds the PDF; `make watch` for live reload |
| `../template/better-poster.tex` | Reference template — same layout, different content |
| `../assets/` | Shared logos + the cruise-ship background |

## How to "land" your contribution

When you're done, leave Toffe a single short message containing:

1. What you verified (with file paths + line numbers from the Anchor repo).
2. What you flagged as inaccurate or stale.
3. What you propose (copy in `poster-content.md`, screenshots in `screenshots/`).
4. Any open question only Toffe can answer.

Don't include diffs of `better-poster.tex` — Toffe will write those.

## Why this poster matters

Anchor is **the** thing in the booth that an industry visitor can
imagine running on their own folders next Monday. Lamin's poster is a
PhD plan; Toffe's is a research direction. Anchor is software with a
QR code. Make sure that's what they take away.

---
*This brief was written 2026-05-04 by the poster-side agent (`/Users/toffe/dev/ai/novia/posters/anchor/`) for whoever shows up next. If it's gone stale or its assumptions no longer match the codebase, **update it** — that's exactly the bridge it's meant to be.*
