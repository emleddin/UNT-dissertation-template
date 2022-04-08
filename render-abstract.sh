#!/bin/bash

FILE=abstract
TEXFILE=${FILE}.tex

## Clean up the work files before recompilation
## The use of `true` means it won't print a warning if it doesn't exist

## Abstract folder
rm -rf 1-abstract/*.aux || true
rm -rf 1-abstract/*.log || true
rm -rf 1-abstract/*.out || true
rm -rf 1-abstract/*.synctex.gz || true

## Run within abstract folder
cd 1-abstract/

## Run texfot pdflatex twice
texfot pdflatex -synctex=1 -interaction=nonstopmode ${TEXFILE}
texfot pdflatex -synctex=1 -interaction=nonstopmode ${TEXFILE}

## Clean up the work files
## The use of `true` means it won't print a warning if it doesn't exist

## Abstract folder
rm -rf *.aux || true
rm -rf *.log || true
rm -rf *.out || true
rm -rf *.synctex.gz || true


