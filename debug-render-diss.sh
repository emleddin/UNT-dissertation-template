#!/bin/sh

FILE=mydissertation
TEXFILE=${FILE}.tex

texfot pdflatex -synctex=1 -interaction=nonstopmode ${TEXFILE}

bibtex 2-chapters/chapter1
bibtex 2-chapters/chapter2
bibtex 2-chapters/chapter3
#bibtex 2-chapters/chapter4
#bibtex 2-chapters/chapter5

## Tell the main file it knows all the references...
bibtex ${FILE}

## Run twice. 1 fixes bib refs, 2 fixes fig refs
texfot pdflatex -synctex=1 -interaction=nonstopmode ${TEXFILE}
texfot pdflatex -synctex=1 -interaction=nonstopmode ${TEXFILE}
