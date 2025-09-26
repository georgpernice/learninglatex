build:
	
	pdflatex -output-directory=output doc07.tex && evince output/doc07.pdf
twice:
	
	pdflatex -output-directory=output doc07.tex && pdflatex -output-directory=output doc07.tex && evince output/doc07.pdf

all:
	bibtex output/doc07

	pdflatex -output-directory=output doc07.tex && pdflatex -output-directory=output doc07.tex && evince output/doc07.pdf



