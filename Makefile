# Makefile for this LaTex document
.PHONY: build clean

build:
	latex paper && biber paper && latex paper && pdflatex paper

clean:
	rm -rf paper.{aux,bbl,bcf,*blg,dvi,log,pdf,run.xml} texput.log
