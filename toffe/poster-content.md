# Poster: Christoffer (Toffe) — Knowledge Available and Accessible through AI

> A1 landscape Better-Poster. Slot names below match `template/better-poster.tex`.
> Edit freely; the takeaway sentence is the one that matters most.

## Audience & framing notes

Same Vaasa industry session as Lamin's poster. By 2026 the *can LLMs do
this?* question is answered (yes, mostly). The 2024-vintage research-plan
framing — "use LLMs to make unstructured data usable" — is now table
stakes. The poster needs to skip that and lead with what we've actually
*learned* from building three tools in this space.

The pitch to industry: **"I'm the person who's already shipped this kind
of thing three times — for lecture videos, research literature, and
engineering datasheets — and I know which patterns actually work."**
Anchor sits in the same booth as the live engineering version.

## Title (left column, top)

**Making Knowledge Available and Accessible through Artificial Intelligence**

(Official thesis title; keep as-is. The poster's *content* carries the
sharper 2026 framing.)

## Authors / supervisors / contact

- **Christoffer Björkskog** · Novia UAS · ❓ `christoffer.bjorkskog@novia.fi`
- **Supervisors:** Andreas Lundell (ÅAU), Johan Westö (Novia UAS), Mikael Manngård (Novia UAS, Advisor)

## Big takeaway (centre column)

> **Knowledge bases are \hl{skills, not apps} — and every answer points back to its source.**

Highlighted phrase: *skills, not apps*.

(Backup wordings — pick whichever lands hardest:)
- *Past **"can the LLM do it?"** To **"can it show its work and grow with you?"***
- *AI doesn't need bigger models — it needs **traceable, editable knowledge**.*
- *Three tools, one lesson: agents are **participants in knowledge work**, not chatbots in front of it.*
- *Knowledge bases that **prove their answers** and **grow when you push back**.*

## Subline (centre column)

> Grounded. Editable. Composable. Three working tools across three domains.

## LEFT panels

### THE QUESTION — RESET FOR 2026
By now everyone has an LLM tagline. The interesting question is no
longer *whether* an AI can search a PDF — it's whether you can trust
the answer, edit the knowledge base when the agent gets it wrong, and
plug the same capability into other workflows without re-implementing
it. **That's the research.**

### LIVED INSIGHTS (from shipping the work)

1. **Provenance is non-negotiable.** Free-text RAG looks magical until a
   mis-transcribed parameter ends up in a safety calculation. Every
   answer should carry a click back to the page region it came from.
2. **The KB is alive.** Static "ingest once, query forever" dumps die
   on contact with real engineering work. The user (and the agent)
   need to push corrections and notes *back into* the base.
3. **Skills, not apps.** Wrap capabilities behind CLI / MCP / WebSocket,
   not buttons in a webapp. Then any agent — Claude Code, Cursor, your
   own — can drive the same knowledge.
4. **Presentation is a research question.** *How* an agent shows its
   results determines whether it adds value or cognitive load. This is
   underexplored.

### PROOF — three tools, three domains
<!-- Alt section titles: "WHERE THE INSIGHTS CAME FROM",
     "TOOLS BEHIND THE INSIGHTS", "BUILT, NOT PROPOSED",
     "THE EVIDENCE", "RUNNING SYSTEMS". Pick whichever lands. -->

- **Course KB** *(lecture material)* — slides + recorded lectures in,
  concept-level navigable knowledge base out. Browser-side semantic
  search via WebAssembly (no backend). Concept treemap; click → slides
  → aligned transcript. NordCHI 2026 submission.
- **Saaristo** *(research literature)* — *"Not an app with a 'do
  literature review' button — a set of small, composable skills an
  agent calls in whatever order the work requires."* Ingest papers via
  OpenAlex, embed, cluster, query in natural language, export BibTeX.
  All over MCP.
- **Anchor** *(engineering datasheets, booth neighbour)* — grounded RAG
  with bounding-box-level provenance back to the source page; canvas
  where humans and agents co-edit; outputs wire straight into FMU
  simulation.

### TIMELINE & PUBLICATION TRACKS
Embedded in **Virtual Sea Trial** (2024–2026). Four PhD publication
tracks — each one corresponds to a domain of unstructured knowledge:

- **I.** Grounded retrieval from technical documents (→ Anchor).
- **II.** Agents as research-literature collaborators (→ Saaristo).
- **III.** Explaining tacit engineering knowledge (continuation of I).
- **IV.** Same methods on civic / municipal records.

Possible research exchange at KTH / Tallinn TU / Reykjavík U / SDU.

## RIGHT panels

### KEY IDEA
The unit of intelligence is the **skill**, not the app. Each
knowledge base is one — composable, MCP-shaped, callable by any agent
or human at a CLI. Provenance and editability are first-class. That's
what separates "useful in production" from "demo that fell apart on
contact with real work."

### WHAT INDUSTRY GETS
- Documents that **answer with their source** — page, region, figure.
  No more "trust the model."
- Knowledge bases that **grow as you use them** — your annotations and
  corrections re-enter the system, they don't get lost.
- Agent-callable from day one — your existing AI tooling can drive the
  same data your engineers see.
- Three working examples already running: Course KB, Saaristo, Anchor.

### READ MORE
- QR target: ❓ `https://virtualseatrial.fi` *(or a personal landing page)*
- Languages covered: English, Finnish, Swedish.
- Live engineering demo: see Anchor poster.

## Footer line

> Funded by Business Finland · Co-Innovation Project Virtual Sea Trial · virtualseatrial.fi

## Visual notes

- Centre background: `assets/forest_grad.png` (river/cliff aerial — visually
  distinct from Lamin's leaves so the two PhD posters read as a pair, not
  duplicates).
- Accent colour: `#F2C94C` (yellow — matches Lamin's poster).
- Logos at top of centre column: ÅAU left, Novia right (white).

## TODOs

- ❓ Confirm email format.
- ❓ Confirm QR target — personal page, lab page, or virtualseatrial.fi?
- ❓ Pick the takeaway from the four candidates (or write a new one).
- ❓ Paper IV (municipalities) is now framed as "civic / municipal records"
  in the publication-track list. Strong enough? Or drop entirely from the
  poster and only mention it if industry asks?
- ❓ Cross-link to Anchor stays in WHAT INDUSTRY GETS — fine?
