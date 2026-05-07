# Poster: Lamin — Untapping Hidden Maritime Data with AI

> A1 landscape Better-Poster. Slot names below match `template/better-poster.tex`.
> Edit freely; the takeaway sentence is the one that matters most.

## Audience & framing notes

Vaasa industry session — Finnish maritime / ship-tech companies, simulation
houses, automation vendors. They are *not* academics; they don't read paragraphs.
The promise must answer "what would I get if I hired Lamin?" in 3 seconds.

Lamin's PhD is fully embedded in the **Virtual Sea Trial** Co-Innovation
project (2024–2026). The poster doubles as a project marketing surface — the
Business Finland / VST / Novia / ÅAU footer is non-negotiable.

## Title (left column, top)

**Untapping the Hidden Potential of Non-Textual Maritime Data Using AI**

## Authors / supervisors / contact

- **Lamin Jatta** · Maritime Technology, Novia UAS · ❓ `firstname.lastname@novia.fi`
- **Supervisors:** Andreas Lundell (ÅAU), Johan Westö (Novia UAS), Mikael Manngård (Novia UAS, Advisor)

## Big takeaway (centre column)

> **Untap hidden value in maritime \hl{audio, video, and 3D} — so engineers can test ships virtually instead of at sea.**

Highlighted phrase: *audio, video, and 3D*.

(Backup wordings if the above lands flat:)
- *Make every minute of maritime audio, video, and 3D **searchable like text**.*
- *Hours of sea-trial footage, queryable in seconds.*

## Subline (centre column)

> Searchable like text. Grounded in the source.

## LEFT panels

### BACKGROUND
Industries like maritime and automotive generate massive amounts of audio and
video data, but only a small fraction is relevant for training AI. Engineering
data is rarely machine-readable — it lives in figures, drawings, and P&ID
diagrams. Both bottlenecks block AI integration in everyday engineering work.

### APPROACH
Apply AI methods to non-textual data:
- **Natural language processing** for audio (VHF radio, ASR, key-phrase extraction).
- **Multimodal embeddings** to compare images, text, and 3D scenes.
- **Semantic search** so engineers query in plain language instead of keywords.
- **Graph representations** of ship onboard systems for structured retrieval.

### ALREADY BUILT
**Maritime Intelligence Pipeline** (course project, ÅAU DDCA): a Bronze →
Silver → Gold medallion architecture on Azure Databricks that ingests AIS
vessel tracking, port data, incident reports and audio transcripts into
a single queryable lakehouse. Includes a TF-IDF risk classifier for
incident reports and a dashboard combining structured + unstructured
maritime sources. Stack: Python · Databricks · Delta Lake · TensorFlow · Azure.

### OUTCOMES — Four planned papers
- **I.** Maritime Automatic Speech Recognition and Key-Phrase Extraction.
- **II.** Semantic Search for Maritime Unstructured Data.
- **III.** Graph Representations of Maritime Systems.
- **IV.** Information Extraction from Engineering Graphs and Diagrams.

### TIMELINE
Conducted in the Virtual Sea Trial project, 1 Jan 2024 — 31 Dec 2026. Papers I
and II in year 1, III in year 2, IV in year 3. Planned 3–6 month research
exchange in 2026.

## RIGHT panels

### KEY IDEA
Audio, video, and 3-D models are first-class engineering data, not byproducts.
Treat them like text and a whole search index opens up — for automated test
generation, situational awareness, and AI-driven training data selection.

The maritime pipeline above proves the ingestion architecture works on real,
regulated maritime data; the PhD turns that prototype into a method.

### WHAT INDUSTRY GETS
- Less time scrubbing through hours of sea-trial footage.
- Automated tests built from real captured behaviour, not hand-written scripts.
- Engineering drawings that answer questions, not just sit in PDFs.
- Compatible with open standards: DEXPI for P&ID, OpenUSD for 3-D scenes.

### READ MORE
- QR target: ❓ `https://virtualseatrial.fi` *(or Lamin's personal page if/when it exists)*
- Project: virtualseatrial.fi
- Partners: Novia UAS · ÅAU · Aboa Mare · RISE (COSWIM)

## Footer line

> Funded by Business Finland · Co-Innovation Project Virtual Sea Trial · virtualseatrial.fi

## Visual notes

- Centre background: `assets/leafts_gradient.png` (existing theme — leaves with
  water drops, fades to black where the takeaway sits).
- Accent colour: `#F2C94C` (yellow, current default in `better-poster.tex`).
- Logos at top of centre column: ÅAU left, Novia right (white versions, on the
  dark image).

## TODOs

- ❓ Confirm the actual `firstname.lastname@novia.fi` form.
- ❓ Confirm QR target URL — is there a Lamin-specific page, or just `virtualseatrial.fi`?
- ❓ Pick between the three takeaway candidates above (or write a new one).
- ❓ Decide whether to mention specific partner companies on the poster (could
  add credibility for industry visitors but might clutter the centre band).
