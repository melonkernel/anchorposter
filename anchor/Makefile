SOURCES = better-poster anchor-v2-poster
PDFS = $(addsuffix .pdf,$(SOURCES))
ASSETS = $(wildcard ../assets/*.png ../assets/*.pdf)

.PHONY: all clean watch open

all: $(PDFS)

%.pdf: %.tex $(ASSETS)
	latexmk $<

watch:
	latexmk -pvc better-poster.tex

open: $(PDFS)
	@for p in $(PDFS); do open "$$p"; done

clean:
	latexmk -C
	rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz *.xdv
