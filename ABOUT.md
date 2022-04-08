# LaTeX Style Files for UNT Dissertations

> **Note:** This documentation was originally written by Dr. J. Matthew Douglass
> and hosted on his UNT site. It has been adapted to reflect a GitHub release.
> Parts of `Instructions` and `Files` not reflecting the included files have
> been removed.

The information and style files in this repository should be enough to get
started preparing a thesis or dissertation that conforms to the requirements
in the UNT [Dissertation and Thesis Manual](https://tgs.unt.edu/thesis-manual)
using LaTex.
Please note that information regarding UNT dissertations and theses found in
this repository are NOT official.
It is provided solely as an aid for students preparing dissertations or
theses using LaTeX.

## Instructions

1. Download the files you need into a single directory/folder.
Downloading the files to a newly created directory or folder is the preferred
method.
2. Files with names beginning in lowercase, for example `macros.tex`, are
meant to be modified.
Files with names beginning in uppercase, for example `UNTdissertation.sty`, are
not meant to be modified.
You can rename the files to whatever you want as long as the master file,
`mydissertation.tex`, is modified accordingly.
3. Make more `chapter?.tex` files and `appendix?.tex` files as needed.

## Files

The individual files that comprise the vanilla example, with the exception of
the `.pdf` examples, all files are text files.

- `mydissertation.tex` - The master file, this is the file that gets "texed"
(or typeset)
- `macros.tex` - A file called by `mydissertation.tex` that contains macros
(Macros can be included in the master file, but it's easier if they aren't.)
- `copyright.tex` - A sample copyright page
- `acknowledgements.tex` - A sample acknowledgements page
- `chapter1.tex` and `chapter2.tex` - Sample chapters
- `appendix.tex` - A sample appendix
- `bibliography.bib` - The source file for the bibliography, in BibTeX format
- `UNTdissertation.sty` - The main style file, needed by `mydissertation.tex`
- `UNTamsplain.bst` - A bibliography style file that controls the format of
the entries in the bibliography
- `mydissertation-sample.pdf` - The vanilla example typeset using the standard
Computer Modern fonts

## Notes and Caveats

- The master file `mydissertation.tex` uses the `amsbook` documentclass.
The style file `UNTdissertation.sty` includes modifications to the `amsbook`
documentclass needed to conform to the UNT style.
- The macros in the style file assume that the default paper size is US letter.
In many TeX/LaTeX distributions, the default paper size is initially set to A4.
To set the paper size to US letter:
    - In Windows XP with a default MiKTeX 2.9 (or proTeXt) installation, go to
    `Start --> Programs --> MiKTeX 2.9 --> Maintenance --> Settings`, then
    set the paper size on the `General` tab
    - In Mac OS X with a default TeXLive installation, run the TeXLive utility
    in the `Applications` folder
    - In Linux with a default teTeX or TeXLive installation, run `texconfig`.
- Dragging and dropping a `.dvi` file onto the `dvipdfm` program that comes with
MiKTeX converts the `.dvi` file to `.pdf`
- Some editing of the `UNTdissertation.sty` might be required depending on your
implementation of LaTeX or specific aspects of your thesis or dissertation.
For example, if you want to use some feature that is not well-, or
fully-implemented in `UNTdissertation.sty`.
- If you include graphics, the conventional wisdom is that `pdflatex` can handle
any file type except postscript file types (`.ps` and `.eps`), and that `latex`
can handle only postscript file types.
Some modern TeX implementations convert postscript files on-the-fly.
If you use `pdflatex`, the simplest thing to do is convert your images to a
non-postscript format (for example, `.png`, `.jpg`, or `.pdf`) and then call
the converted files.

## Credits

The files were originally created by Matt Douglass.
William Cherry helped with the code to produce the `APPROVED` block on the
title page.

- Ion Coiculescu (PhD 2005) was the first student to use the style files.
- Ross Bryant (PhD 2006) contributed code for the `List of Tables` and the
`List of Figures`.
- Andy Yingst (PhD 2006) identified the paper size "feature" in `pdflatex` and
provided an initial fix.
- Stephen Muir (PhD 2011) suggested using the `geometry` package to deal with
margin and paper size problems that might arise when using `pdflatex`.
- Kalyan Pathapati-Subbu (PhD 2011) contributed the basic code used to typeset
the graphics in the non-vanilla example.
- Matt Farmer (PhD 2012) contributed a working implementation of the `autoref`
feature in the `hyperref` package.
- Jun-deh Wu (PhD 2012) found a `List of Figures/List of Tables` bug in
`amscls`.
- Alice Walker (PhD 2017) addressed the issue of figures in the appendices
appearing in the Table of Contents.
- Emmett Leddin (PhD 2022) created the directory tree, fixed bookmarking issues,
and created the `minted` example.

Suggestions for additions, modifications, and/or improvements to the style
files, as well as helpful hints for future users, are always welcome!

**Happy TeXing!!**
