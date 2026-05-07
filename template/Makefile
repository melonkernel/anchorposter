SOURCES = poster better-poster
PDFS = $(addsuffix .pdf,$(SOURCES))
ASSETS = $(wildcard ../assets/*.png ../assets/*.pdf)

.PHONY: all clean watch-poster watch-better open

all: $(PDFS)

%.pdf: %.tex $(ASSETS)
	latexmk $<

watch-poster:
	latexmk -pvc poster.tex

watch-better:
	latexmk -pvc better-poster.tex

open: $(PDFS)
	@for p in $(PDFS); do open "$$p"; done

clean:
	latexmk -C
	rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz *.xdv
