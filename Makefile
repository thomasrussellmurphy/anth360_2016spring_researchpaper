# Makefile for this LaTex document
.PHONY: clean

%.pdf: %.tex
	pdflatex $* && biber $* && pdflatex $* && pdflatex $*

proposal.pdf: exported_items.bib

paper.pdf: exported_items_active_updating.bib

references.pdf: exported_items_active_updating.bib

clean:
	rm -rf *.{aux,bbl,bcf,blg,dvi,log,pdf,run.xml} texput.log
