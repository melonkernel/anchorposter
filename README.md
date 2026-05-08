# Anchor Poster

This repository contains A1 conference posters built with LaTeX. Each poster
folder has its own `Makefile` and can be compiled independently.

## Prerequisites

- A LaTeX distribution with XeLaTeX and `latexmk` available on `PATH`
  - TeX Live or MacTeX are suitable.
- The fonts used by the template:
  - Open Sans
  - Montserrat
- Optional, for PNG previews: `pdftoppm` from Poppler or TeX Live.

## Build The Anchor Poster

From the repository root:

```sh
make anchor
```

Or from the poster folder:

```sh
cd anchor
make
```

The output PDF is:

```text
anchor/better-poster.pdf
```

## Windows Fallback

If `make` is not installed, run `latexmk` directly from the poster folder:

```powershell
cd anchor
latexmk better-poster.tex
```

This uses `anchor/.latexmkrc`, which builds the poster with XeLaTeX.

## Preview As PNG

To render a quick preview image:

```powershell
cd anchor
pdftoppm -png -r 72 -singlefile better-poster.pdf build_check/poster-preview
```

The preview will be written to:

```text
anchor/build_check/poster-preview.png
```

## Notes

- `anchor/poster-content.md` is the editorial source for poster copy and open
  questions.
- `anchor/better-poster.tex` is the LaTeX layout source.
- `anchor/screenshots/` contains real product screenshots used by the poster.
- `anchor/build_check/` is for local preview files and does not need to be
  committed.
