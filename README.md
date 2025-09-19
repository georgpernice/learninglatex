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
pdflatex -output-directory=output <FILE>.tex && firefox output/<FILE>.pdf
```
 # Terminology
 - Things that use \\begin or \\end are called an **environment**.
 
 - The area before our *document* environment is called **preamble**

