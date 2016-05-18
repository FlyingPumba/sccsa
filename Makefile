.PHONY: clean all

LATEX := pdflatex
BIBTEX := bibtex
LATEXFLAGS := -interaction=nonstopmode

PDFS := informe.pdf

all: clean $(PDFS)

%.pdf: %.tex
	$(LATEX) $(LATEXFLAGS) $<
	$(BIBTEX) informe
	$(LATEX) $(LATEXFLAGS) $<
	$(LATEX) $(LATEXFLAGS) $<

clean:
	rm -rf ./*.aux ./*.log ./*.tex~ ./*.toc ./*.pdf ./*.tex.backup ./*.snm ./*.vrb ./*.nav ./*.out ./*.fdb_latexmk ./*.maf ./*.mtc ./*.mtc0 ./*.synctex.gz ./*.fls ./*.blg ./*.bbl ./*.bcf ./*.run.xml ./*.bbl
