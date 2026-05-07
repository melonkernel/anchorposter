# For agents contributing to any poster in this repo

You probably arrived here because Toffe asked you to "help with the
poster." You know one of the source projects (Anchor, Lamin's
Maritime Intelligence Pipeline, Toffe's Course KB / Saaristo, or
something else). You don't necessarily know how this poster repo is
laid out. This file is the bridge — the same rules apply to every
poster here.

Read this end-to-end first. Then read the **per-poster
`AGENTS.md`** in the relevant subfolder (`anchor/AGENTS.md`,
`lamin/AGENTS.md`, `toffe/AGENTS.md`, …) for what's specific to that
one. Then do the smallest useful thing.

## What this repo is

A small set of **A1 conference posters**, one per project, sharing a
common LaTeX template. Each poster is its own subfolder; each has
its own `Makefile` and builds independently to a PDF. The shared
visual identity (fonts, colours, geometry, logos, hero imagery)
lives in `template/` and `assets/`.

```
posters/
├── AGENTS.md              ← you are here (cross-poster rules)
├── Makefile               ← `make <subdir>` builds one poster
├── assets/                ← shared logos, hero images
├── template/              ← reference layout (don't ship this one)
├── anchor/                ← one poster per project subdir
│   ├── AGENTS.md          ← project-specific brief
│   ├── poster-content.md  ← editorial source of truth
│   ├── better-poster.tex  ← LaTeX source (Toffe-only)
│   ├── screenshots/       ← real product screenshots
│   └── generated/         ← AI brainstorm sketches (drafts only)
├── lamin/                 ← same shape
└── toffe/                 ← same shape
```

The format is **Mike Morrison's "better-poster"** — three columns,
side panels carrying the paper-style detail, centre band carrying
**one big takeaway sentence** that every visitor reads in 3 seconds.
Don't fight the format; it's the whole point.

## What you are here to do

You bring **ground truth** that the poster-side agent doesn't have.
You can answer "is this still true?" by reading the code in your
home project. The poster drafts were written some weeks ago; the
code has probably moved.

The job, in priority order, on whichever poster you're contributing to:

1. **Truth-check the existing draft.** Open `poster-content.md` and
   `better-poster.tex`. Verify each factual claim against the live
   code. Flag (don't silently fix) anything stale, oversold, or
   missing nuance.
2. **Propose tighter copy** where the current text is generic, vague,
   or outdated. Background blurbs, takeaway candidates, "what
   industry gets" bullets — all fair game.
3. **Suggest screenshots that don't yet exist** but would land
   harder than what's there now. See *Image specs* below.
4. **Update the LINEAGE section** of *other* posters when your
   project's status changes — Anchor, Course KB, Saaristo, Maritime
   Intelligence Pipeline, and the PhD plans cross-reference each
   other. If your project shipped something or pivoted, the other
   posters' one-line description of you may now be wrong.

The per-poster `AGENTS.md` will list specific open questions for
that one — read it for the details.

## What you must NOT do

- **Don't edit `better-poster.tex` directly.** Toffe owns the
  layout. Propose copy and images; he integrates. (Exception: a
  typo or a broken math expression you can fix in place.)
- **Don't generate AI illustrations for final poster assets.**
  These posters are presented to industry visitors who may ask
  "where's that screenshot from?" Anchor's poster in particular is
  *about provenance* — fake artwork on it would be a self-own. Use
  `gemini-image-generator` only for *internal brainstorm sketches*
  in the `generated/` folder, never as the final asset.
- **Don't add new sections.** Each poster's layout is full. Anything
  new has to displace something else, and that's a Toffe decision.
- **Don't change visual identity** — fonts, geometry, the warm-cream
  side panels, the centre band's hero image, the accent colour. If
  you have strong feelings, write them up; don't act on them. (The
  one place the per-poster brief may explicitly invite a colour
  change is the accent — Anchor uses warm orange, the PhD posters
  use yellow. Stay inside that scheme unless told otherwise.)
- **Don't commit anything.** This is Toffe's working repo. Leave
  changes uncommitted and tell him what you did.
- **Don't run `make clean` or delete other posters' artefacts.**
  Stay inside the subfolder you were sent to.

## Workflow

1. **Read the per-poster `AGENTS.md`** in the subfolder you were
   sent to. It will name the source repo, list specific open
   questions, and tell you what's working vs. aspirational.
2. **Read `poster-content.md`** in that same subfolder — it's the
   editorial source of truth. The `.tex` implements a subset.
3. **Build the current PDF** to see the live state:
   ```bash
   cd <poster-subdir>
   make            # builds better-poster.pdf
   make watch      # live rebuild on save (latexmk -pvc)
   ```
4. **Propose changes by editing `poster-content.md`**. Add new copy
   under a clearly labelled section, e.g.
   `## Proposed background (from <your-project-name> agent, 2026-MM-DD)`.
   Don't overwrite existing content — Toffe needs to see the
   alternatives side-by-side.
5. **Drop new screenshots into `screenshots/`** with self-describing
   names. Add a one-line entry to `poster-content.md` under
   `## Proposed screenshots` saying what the image shows and where
   in the layout it could go.
6. **Drop brainstorm sketches into `generated/`** with the prompt
   you used in a sibling `.txt` file (so Toffe can iterate). These
   are drafts — they never go on the final poster.
7. **Land your contribution** (see below).

## Image specs

For new screenshots dropped into `screenshots/`:

- **Format**: PNG, no transparency.
- **Resolution**: ≥1500 px on the long edge. The poster prints at
  A1; small thumbnails will look mushy.
- **Aspect ratios that fit the layout cleanly**:
  - **Landscape ~16:9** → right-column "main figure" slot
  - **Portrait ~3:4** → centre flow strip's leftmost panel (datasheet
    position) or as a small inline figure
  - **Near-square** → safe everywhere
- **Crop tightly** — no browser chrome, no OS wallpaper, no menu bars
  unless the chrome *is* the point. The poster has very little space.
- **No annotations baked in** unless they reuse the poster's accent
  colour (each per-poster brief lists it). If you want to point at a
  region, it's better to leave a clean image and let the LaTeX layer
  draw the callout.

## The "land your contribution" protocol

When you're done, leave Toffe a single short message containing:

1. **What you verified** (with file paths + line numbers from your
   home repo).
2. **What you flagged** as inaccurate, stale, or oversold.
3. **What you propose** (copy added to `poster-content.md`,
   screenshots added to `screenshots/`, sketches in `generated/`).
4. **Open questions only Toffe can answer** (license choices, QR
   target, whether to name a contributor, etc.).

**Don't include diffs of `better-poster.tex`** — Toffe will write
those.

## Why these posters matter

The Vaasa industry session in 2026 is a small audience of Finnish
maritime / ship-tech / simulation / automation companies. They are
*not* academics; they don't read paragraphs. The whole booth has
~30 seconds per visitor. The takeaway sentence is the one that
matters most. Everything else exists so the takeaway lands.

If your contribution helps one of those takeaways land harder —
sharper claim, truer demo, cleaner screenshot — it earned its place.
If it doesn't, leave the poster alone.

---
*This brief was written 2026-05-04. If it's gone stale or its
assumptions no longer match how Toffe is running the repo,
**update it** — that's exactly the bridge it's meant to be.*
