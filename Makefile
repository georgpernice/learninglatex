SHELL := /bin/bash
.SHELLFLAGS := -O extglob -c
compile-once:
	
	pdflatex doc07.tex && evince doc07.pdf
compile-twice:
	pdflatex doc07.tex && pdflatex doc07.tex && evince doc07.pdf

build:
	pdflatex doc07.tex

	bibtex doc07

	pdflatex doc07.tex && pdflatex doc07.tex && evince doc07.pdf

del:
	rm doc07!(*.tex) # && rm texput.log

