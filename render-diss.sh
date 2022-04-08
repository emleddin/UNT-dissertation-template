#!/bin/bash

FILE=mydissertation
TEXFILE=${FILE}.tex

## Clean up the work files before recompilation
## The use of `true` means it won't print a warning if it doesn't exist

rm -rf *.aux || true
rm -rf *.log || true
rm -rf *.lot || true
rm -rf *.lof || true
rm -rf *.out || true
rm -rf *.toc || true
rm -rf *.synctex.gz || true

## Bibliography
rm -rf *.bbl || true
rm -rf *.blg || true
rm -rf acs-mydissertation.bib || true

## Frontmatter folder
rm -rf 0-frontmatter/*.aux || true

## Abstract folder
rm -rf 1-abstract/*.aux || true
rm -rf 1-abstract/*.log || true
rm -rf 1-abstract/*.out || true
rm -rf 1-abstract/*.synctex.gz || true

## Chapters folder (remove log in case you messed up)
rm -rf 2-chapters/*.aux || true
rm -rf 2-chapters/*.log || true
rm -rf 2-chapters/*.bbl || true
rm -rf 2-chapters/*.blg || true

## Run texfot pdflatex
texfot pdflatex -synctex=1 -interaction=nonstopmode ${TEXFILE}

## Run citations
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

## Clean up the work files
## The use of `true` means it won't print a warning if it doesn't exist

rm -rf *.aux || true
rm -rf *.log || true
rm -rf *.lot || true
rm -rf *.lof || true
rm -rf *.out || true
rm -rf *.toc || true
rm -rf *.synctex.gz || true

## Bibliography
rm -rf *.bbl || true
rm -rf *.blg || true
rm -rf acs-mydissertation.bib || true

## Frontmatter folder
rm -rf 0-frontmatter/*.aux || true

## Abstract folder
rm -rf 1-abstract/*.aux || true
rm -rf 1-abstract/*.log || true
rm -rf 1-abstract/*.out || true
rm -rf 1-abstract/*.synctex.gz || true

## Chapters folder (remove log in case you messed up)
rm -rf 2-chapters/*.aux || true
rm -rf 2-chapters/*.log || true
rm -rf 2-chapters/*.bbl || true
rm -rf 2-chapters/*.blg || true


