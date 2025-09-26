# Installation on Debian:

I just installed texlive using apt and then used pdflatex to compile my tex files.
Apparently pdflatex is a part of texlive which is a bigger tool collection.

# Compilation Workflow:

Apparently a lot of files spawn when you compile tex code. 
So far I have sighted:
 - aux files
 - log files
 - pdf files ( this one was expected )

 It might be a good idea to put them into the output directory..
 ```
  pdflatex -output-directory=output doc01.tex

 ```
Actually even better would be to later display it:
```
pdflatex -output-directory=output doc05.tex && firefox output/doc05.pdf
```
 # Terminology
 - Things that use \\begin or \\end are called an **environment**.
 
 - The area before our *document* environment is called **preamble**

 - Sections, Subsections and paragraphs 
   (paragr. are not numbered and similar to bold text but only the heading is bold)

# Math
 - non-numbered equations go with asterisk, multiline equations are aligned at ampersand symbol
 - matrices are done using matrix environment and braced using \\left\[ and \\right\]
 
 # Images
 - images are inserted inside figure environment to position and number them correctly using the `\includegraphics[width=\linewidth]{<file>}` command :-)
 - figure positioning is done at `\begin{figure}[h!]` to place the image exaclty here. Also t(op) b(ottom) of the page or an extra p(age) can be used.
 - subfigures are a code intense business but great for diagram comparison. To title them you need the `subcaption` package so that you simply can youse `\caption` inside the subfigure environment. 
 - Spacing can be modified to `\singlespacing` or `\doublespacing` using the `setspace` package :-)
 - tocdepth for the table of contents can be configured setting a counter using `setcounter{tocdepth}{2}` for example to hide some subsubsections if necessary
 
