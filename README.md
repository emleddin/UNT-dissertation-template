# UNT Dissertation Template

Congratulations on making it to the dissertation stage!

This repository fixes some of the issues with the LaTeX style files obtained
throughout 2016-2022.

See the [UNT Thesis Manual](https://tgs.unt.edu/thesis-manual) for detailed
information about requirements.

## Quick Start

1. Modify the `Macros for Setting Up Document` block in `macro.tex`.
2. Use the file tree to add documents.
3. Run `render-diss.sh` (update the `bibtex` lines for chapters accordingly).

## Repository Structure

- `0-frontmatter/`: contains the acknowledgements, copyright info, and template
files.
    - `macros.tex`: New commands to make your life easier.
- `1-abstract/`: contains the abstract.
It must be separate from UNT dissertations.
- `2-chapters/`: contains each chapter and appendix file.
You may wish to label chapters like `1-first-chap`
and corresponding appendices like `A1-first-app`.
- `3-images/`: base path for images.
Consider using subdirectories for each chapter.
- `4-extras/`: contains extra related files to support the LaTeX build.

### Macros
Macros are defined in `0-frontmatter/macros.tex`.

- Macros have been created for chapter titles, so as not to repeatedly type
them out (ex: `\MyChapOne`).
- A macro for the caption panel lettering is given through `\FC`.
```latex
\caption{This is my figure broken into \FC{A} to talk about A,
    \FC{B} to talk about B, and
    \FC{C} to talk about C.}
```
This was done to ensure all captions are consistent, and to easily change the
style throughout.
- A similar macro to `\FC` has been created for subfigure referencing, `\Fsr`.
```latex
The thing is in (Figure \ref{fig:123}\Fsr{A}).
```
- `\Fref`, `\Tref`, `\MFref`, and `\MTref` have been defined to manage
figure and table references.
    - `\Fref{fig:123}` produces `Figure 1`
    - `\MFref{fig:123} and \Fref{fig:234}` produces `Figures 1 and 2`
    - `Tref{tab:t1}` produces `Table 1`
    - `\MTref{tab:t1} and \Tref{tab:t2}` produces `Tables 1 and 2`

## Rendering the File
To render the dissertation, run:
```
bash render-diss.sh
```
This will take care of cleaning old files and running it enough time for the
files and bibliography.
It will also clean up the files again.

To run a version with `minted` highlighting (see below), run:
```
bash render-code.sh
```
This will clean the files, getting rid of the minted directory.

For debugging, run either
```
bash debug-render-diss.sh
```
or
```
bash debug-render-code.sh
```
These versions will keep all of the various files created by pdflatex and biber.

To clean the files leftover from debugging, run:
```
bash clean.sh
```

To build the abstract (which does not go in the final document), run:
```
bash render-abstract.sh
```

### Verifying Fonts
TGS requires all fonts to be embedded (and that's just good PDF practice).
You can verify that LaTeX embedded the fonts with:
```
pdffonts mydissertation.tex
```

### Reducing the File Size

Your file may get too big for TGS to handle.
To compress the file size without affecting quality too much, use Ghostscript.
```
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -sOutputFile=output.pdf input.pdf
```

## Using `minted` for Syntax Highlighting

`minted` calls the Python package `pygments`, which will need to be installed on
your machine.
First, add this to the `mydissertation.tex` file (to set up a sans serif
monospaced font with `minted`).

```latex
%%% Set font for code blocks
\usepackage{sourcecodepro}
\usepackage{minted}
\newenvironment{longlisting}{\captionsetup{type=listing}}{}
```

For accessibility, there are modified highlighting themes included under
`4-extras`.
To get these themes, you first need to copy that theme to where your `pygments`
styles are located.
For me, this is under
```
/usr/local/anaconda3/lib/python3.8/site-packages/pygments/styles
```
Then, you need to modify the `__init__.py` file in the same folder to map the
called name with the name in that file.
Add the name to the `STYLE_MAP` dictionary:
```python
    'allylight':  'allylight::AllyLightStyle',
    'bwbold':     'bwbold::BlackWhiteBoldStyle',
```

Now, write your code blocks in the relevant LaTeX files like:
```latex
\begin{longlisting}
\begin{minted}
[
frame=lines,
framesep=2mm,
%bgcolor=codegray,
baselinestretch=1, % Linespacing
fontsize=\scriptsize,
style=allylight
%linenos
]
{python}
print('Hello World')
\end{minted}
\caption{Python-based 'Hello World' exercise.}
\label{lst:helloworld}
\end{longlisting}
```
Here, `style=allylight`, but if you don't want color, you can use
`style=bwbold`.

Now you should be ready to compile normally, using `render-code.sh`!

## Additional Helpful Packages

- Load `mathscinet` for Polish letters in bibliography
- Load `aliascnt` for improved counters
- Load `soul` to add highlighting (great for notes to self)
- Load `comment` to be able to comment out large blocks without `%` signs

## Tips and Tricks

- Don't be afraid to use macros! They'll make your life easier!
- Try to use a consistent format for labels within your `.bib` file
(like `LastnameYear`) with the four-digit year.
Consider whether you need titles to be in Title Case, and if you want to
include DOIs when building this file.
- Remember to obtain RightsLink permissions for any published work!
You will need to include evidence of these permissions (PDFs or screenshots)
at the time of Vireo submission.
- Vireo has a max individual file size of 512 MB.
- [Overleaf](https://www.overleaf.com/) has a compile limit!
A document with lots of chapters and figures will likely crash.
If possible, use a local LaTeX distribution.
- If you use GitHub for version control, look into
[GitLFS](https://git-lfs.github.com/). It's faster for big PDFs.
