# Makefile for this LaTex document
.PHONY: paper proposal clean

paper:
	pdflatex paper && biber paper && pdflatex paper && pdflatex paper

proposal:
	pdflatex proposal && biber proposal && pdflatex proposal && pdflatex proposal

references:
	pdflatex references && biber references && pdflatex references && pdflatex references

clean:
	rm -rf *.{aux,bbl,bcf,blg,dvi,log,pdf,run.xml} texput.log
