Hi, this is my version of the Ph.D. Thesis Template for the University of Newcastle.
I have modified some images and fonts. Please, remember that each faculty and school may have specific rules for documents.
A good starting point is consulting a librarian prior to write your thesis.
Also, check with your advisor.

I have modified these files from Mikhail V. Konnik, you can found the original here: (http://www.mvkonnik.info/p/latex-template-for-phd-thesis-in.html)

====
LaTeX Ph.D. Thesis Template for the University of Newcastle, Australia.
====

These files represent a complete LaTeX template of a Ph.D. thesis for the University of Newcastle, Australia. The template is [based on a code for Monash University (Australia)](http://www.csse.monash.edu.au/software/latex/), but a bit simplified and cleaned up. The template contains the Newcastle Logo in vector form, chapter examples, and other goodies. The template works with both **pdflatex** and **dvips**.


How to use the template
----

First things first: you have to install LaTeX on your computer, which varies with the OS you use (Windows, Linux, MacOS, FreeBSD....). Please use your [favorite search engine](http://www.google.com) to find out how to install LaTeX.

Assuming you have some minimal experience with LaTeX, please [download the latest version of this template](https://github.com/mydebianblog/phdtemplateaunewcastle/archive/master.zip) and unpack it in the directory / folder where you want to write your thesis. Open the main file:

> _thesisPhD.tex_

and try to compile it - **it *must* compile** without any problems, and you should get _thesisPhD.pdf_ or _thesisPhD.dvi_ (depending on the settings) that looks like this:

![](https://dl.dropboxusercontent.com/u/8038890/LaTeX/thesisPhD.png)

If you get errors or do not see the Newcastle Logo on the front page of the thesis, check the very first string in:

   - \documentclass[a4paper,11pt,phdthesis,twoside,oneandhalfspace]{cssethesis}  %% <-- uncomment this string if you want to use old-school **dvips**
   - \documentclass[a4paper,11pt,phdthesis,twoside,oneandhalfspace,pdflatex]{cssethesis} %% <--- uncomment this string if you want to use PDFLaTeX
 

It goes without saying that you have to correct the title, name and other things relevant to your earth-shuttering thesis ;-)


Some good ideas about writing your thesis in LaTeX
----

It goes without arguing that the Ph.D. thesis in hard science *must* be written in LaTeX, and not in that dumbed-down pointy-clicky behemoth MS Word/OpenOffice for office plankton. 

The fact is: Word/Openoffice is useful for small, insignificant, unstructured and unimportant documents. LaTeX, on the other hand, is a powerful programming language for technical people and their complex, well-structured, math-ridden and picture-rich documents.

The following tips and tricks can (and will!) save you countless sleepless nights and oceans of tears:

 - separate each chapter of your thesis in its own file, and then use \input{myfile} command to link then in a master document _thesisPhD.tex_
 - put pictures in a separate subdirectory/subfolder, preferable splitting them chapter-wise;
 - pick up [either dvips or pdflatex](http://www.math.northwestern.edu/comp-help/including_graphics.html), and [don't mix them](http://homepages.physik.uni-muenchen.de/~Otto.Schaile/howtos/h_pdflatex.html)! The difference:
      - use **dvips** if you have a lot of vector figures (from Gnuplot, for example) and vector graphics (in EPS format). You can always convert them to PDF using a command:
> epstopdf foo.ps
      - use **pdflatex** in all other cases (if you don't need to convert your work to rtf/doc, or you don't know what EPS is).
 - use **bibtex** or **natbib** for all your citations, it will save you countless buckets of tears
 - use the \label command in LaTeX wisely:
      - give names to different items with appropriate prefixes, e.g., \label{eq:maxwell} is a better reference to the Maxwell equations than \label{123}
      - use a colon (:) for references in chapters and sections, like \label{chap:intro:sec:review}
 - use version control system (Subversion/Mercurial/Git/whatever - they are FREE!) with LaTeX to:
      - be able to roll back any change or recover a section/chapter/paragraph at your advisor's second thought (aka "you know, a month ago we had a section here that it looked really nice...")
      - to backup your whole thesis (especially true with distributed version control systems like Mercurial or Git) and sync your work between home/uni;
      - to upload the code into a private repository on the Web (yet another backup).
 - use bug/issues tracking capabilities in GitHub.com or bitbucket.com to flag the areas to discuss / improve.

... and the rest of ideas from your thesis advisor.