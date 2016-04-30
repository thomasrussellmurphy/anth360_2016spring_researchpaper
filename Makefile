# Makefile for this LaTex document
.PHONY: clean

%.pdf: %.tex
	pdflatex $* && biber $* && pdflatex $* && pdflatex $*

clean:
	rm -rf *.{aux,bbl,bcf,blg,dvi,log,pdf,run.xml} texput.log
