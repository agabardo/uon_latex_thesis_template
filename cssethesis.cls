%%
%% This is file `cssethesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% cssethesis.dtx  (with options: `class')

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cssethesis}
\newif\if@pdflatex \@pdflatexfalse % Default is false
\DeclareOption{pdflatex}{\@pdflatextrue}
\newif\if@wasopenright \@wasopenrighttrue % true is the default
\DeclareOption{openright}{\@wasopenrighttrue}
\DeclareOption{openany}{\@wasopenrightfalse}
\DeclareOption{thesisdraft}{%
  \AtEndOfClass{% So it will override the definition given below
\let\ps@plain\@empty
    \def\ps@plain{%
     \let\@oddfoot\@empty\let\@evenfoot\@empty
     \def\@oddfoot{\hfil\textsl{Draft of \timestamp}}%
     \def\@evenfoot{\textsl{Draft of \timestamp}\hfil}%
}
\let\ps@headings\@empty
    \def\ps@headings{%
     \let\@oddfoot\@empty\let\@evenfoot\@empty
     \def\@oddfoot{\hfil\textsl{Draft of \timestamp}}%
     \def\@evenfoot{\textsl{Draft of \timestamp}\hfil}%
}
   }
}
\DeclareOption{thesispsdraft}{%
  \AtEndOfClass{% So it will override the definition given below
\let\ps@plain\@empty
    \def\ps@plain{%
\special{!userdict begin /bop-hook{gsave 70 270 translate
          90 rotate /Times-Roman findfont 80 scalefont setfont
          0 0 moveto 0.9 setgray (DRAFT) show grestore}def end}
     \let\@oddfoot\@empty\let\@evenfoot\@empty
     \def\@oddfoot{\hfil\textsl{Draft of \timestamp}}%
     \def\@evenfoot{\textsl{Draft of \timestamp}\hfil}%
}
\let\ps@headings\@empty
    \def\ps@headings{%
     \let\@oddfoot\@empty\let\@evenfoot\@empty
     \def\@oddfoot{\hfil\textsl{Draft of \timestamp}}%
     \def\@evenfoot{\textsl{Draft of \timestamp}\hfil}%
}
}
  }

% A thesis submitted in  fulfilment of the requirements for the degree of
\DeclareOption{phdthesis}{%
\ifx\undefined\thesistype
\newcommand{\thesisfulfillment}{in partial fulfilment}
%\newcommand{\thesistype}{Thesis}
\newcommand{\thesistype}{Confirmation Report}
\newcommand{\thesisdegree}{Doctor of Philosophy}
\newcommand{\thesisdegreeabbreviation}{Ph.D.}
\newcommand{\thesiscoursecode}{}
\else
\ClassError{cssethesis}{only one thesis type option may be
specified}{}
\fi
}
\DeclareOption{mitthesis}{%
\ifx\undefined\thesistype
\newcommand{\thesisfulfillment}{for fulfillment}
\newcommand{\thesistype}{Thesis}
\newcommand{\thesisdegree}{Master of Information Technology (Research)}
\newcommand{\thesisdegreeabbreviation}{MIT}
\newcommand{\thesiscoursecode}{1895}
\else
\ClassError{cssethesis}{only one thesis type option may be
specified}{}
\fi
}
\DeclareOption{mitminorthesis}{%
\ifx\undefined\thesistype
\newcommand{\thesisfulfillment}{in partial fulfillment}
\newcommand{\thesistype}{Minor Thesis}
\newcommand{\thesisdegree}{Master of Information Technology (Minor Thesis)}
\newcommand{\thesisdegreeabbreviation}{MIT}
\newcommand{\thesiscoursecode}{3316}
\else
\ClassError{cssethesis}{only one thesis type option may be
specified}{}
\fi
}
\DeclareOption{mitcourseworkthesis}{%
\ifx\undefined\thesistype
\newcommand{\thesisfulfillment}{in partial fulfillment}
\newcommand{\thesistype}{Minor Thesis}
\newcommand{\thesisdegree}{Master of Information Technology (Coursework)}
\newcommand{\thesisdegreeabbreviation}{MIT}
\newcommand{\thesiscoursecode}{2402}
\else
\ClassError{cssethesis}{only one thesis type option may be
specified}{}
\fi
}
\DeclareOption{mcsminorthesis}{%
\ifx\undefined\thesistype
\newcommand{\thesisfulfillment}{in partial fulfillment}
\newcommand{\thesistype}{Minor Thesis}
\newcommand{\thesisdegree}{Master of Computer Science (Minor Thesis)}
\newcommand{\thesisdegreeabbreviation}{MCS}
\newcommand{\thesiscoursecode}{3328}
\else
\ClassError{cssethesis}{only one thesis type option may be
specified}{}
\fi
}
\DeclareOption{mdcthesis}{%
\ifx\undefined\thesistype
\newcommand{\thesisfulfillment}{for fulfillment}
\newcommand{\thesistype}{Thesis}
\newcommand{\thesisdegree}{Master of Digital Communications}
\newcommand{\thesisdegreeabbreviation}{MDC}
\newcommand{\thesiscoursecode}{2406}
\else
\ClassError{cssethesis}{only one thesis type option may be
specified}{}
\fi
}
\DeclareOption{bcomphonoursthesis}{%
\ifx\undefined\thesistype
\newcommand{\thesisfulfillment}{in partial fulfillment}
\newcommand{\thesistype}{Thesis}
\newcommand{\thesisdegree}{Bachelor of Computing with Honours}
\newcommand{\thesisdegreeabbreviation}{BComp(Hons)}
\newcommand{\thesiscoursecode}{0194}
\else
\ClassError{cssethesis}{only one thesis type option may be
specified}{}
\fi
}
\DeclareOption{bcshonoursthesis}{%
\ifx\undefined\thesistype
\newcommand{\thesisfulfillment}{in partial fulfillment}
\newcommand{\thesistype}{Thesis}
\newcommand{\thesisdegree}{Bachelor of Computer Science with Honours}
\newcommand{\thesisdegreeabbreviation}{BCompSc(Hons)}
\newcommand{\thesiscoursecode}{1608}
\else
\ClassError{cssethesis}{only one thesis type option may be
specified}{}
\fi
}
\DeclareOption{bdshonoursthesis}{%
\ifx\undefined\thesistype
\newcommand{\thesisfulfillment}{in partial fulfillment}
\newcommand{\thesistype}{Thesis}
\newcommand{\thesisdegree}{Bachelor of Digital Systems with Honours}
\newcommand{\thesisdegreeabbreviation}{BDigSys(Hons)}
\newcommand{\thesiscoursecode}{1200}
\else
\ClassError{cssethesis}{only one thesis type option may be
specified}{}
\fi
}
\DeclareOption{bshonoursthesis}{%
\ifx\undefined\thesistype
\newcommand{\thesisfulfillment}{in partial fulfillment}
\newcommand{\thesistype}{Thesis}
\newcommand{\thesisdegree}{Bachelor of Science (Computer Science) with
Honours}
\newcommand{\thesisdegreeabbreviation}{BSc(Hons)}
\newcommand{\thesiscoursecode}{0051}
\else
\ClassError{cssethesis}{only one thesis type option may be
specified}{}
\fi
}
\DeclareOption{bsehonoursthesis}{%
\ifx\undefined\thesistype
\newcommand{\thesisfulfillment}{in partial fulfillment}
\newcommand{\thesistype}{Thesis}
\newcommand{\thesisdegree}{Bachelor of Software Engineering with
Honours}
\newcommand{\thesisdegreeabbreviation}{BSE(Hons)}
\newcommand{\thesiscoursecode}{2770}
\else
\ClassError{cssethesis}{only one thesis type option may be
specified}{}
\fi
}
\DeclareOption{mcompthesis}{%
\ifx\undefined\thesistype
\newcommand{\thesisfulfillment}{for fulfillment}
\newcommand{\thesistype}{Thesis}
\newcommand{\thesisdegree}{Master of Computing}
\newcommand{\thesisdegreeabbreviation}{MComp}
\newcommand{\thesiscoursecode}{}
\else
\ClassError{cssethesis}{only one thesis type option may be
specified}{}
\fi
}
\DeclareOption{mcompminorthesis}{%
\ifx\undefined\thesistype
\newcommand{\thesisfulfillment}{in partial fulfillment}
\newcommand{\thesistype}{Thesis}
\newcommand{\thesisdegree}{Master of Computing (Minor)}
\newcommand{\thesisdegreeabbreviation}{MComp}
\newcommand{\thesiscoursecode}{}
\else
\ClassError{cssethesis}{only one thesis type option may be
specified}{}
\fi
}
\DeclareOption{nocoursecode}{%
    \let\thesiscoursecode\@undefined
}
\newif\if@litreview \@litreviewfalse
\DeclareOption{litreview}{%
\@litreviewtrue
\renewcommand{\thesistype}{Literature Review}
}
\DeclareOption{singlespace}{\AtBeginDocument{\singlespacing}}
\DeclareOption{oneandhalfspace}{\AtBeginDocument{\onehalfspacing}}
\DeclareOption{doublespace}{\AtBeginDocument{\doublespacing}}
\DeclareOption{indentfirst}{\let\@afterindentfalse\@afterindenttrue
                            \@afterindenttrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ExecuteOptions{oneandhalfspace}
\ProcessOptions
\LoadClass{book}[1994/12/01]
\ifx\undefined\thesistype
  \ClassError{cssethesis}
   {thesis type not specified. Please give a class option to specify the
   thesis type}%
   {Use, for example, \protect\documentclass[phdthesis]{cssethesis}.
   Possibilities are: phdthesis, mitthesis, mitminorthesis,
   mitcourseworkthesis, mcsminorthesis, mdcthesis, bcomphonoursthesis,
   bcshonoursthesis, bdshonoursthesis, bshonoursthesis,bsehonoursthesis}
\fi
\RequirePackage[paper=a4paper,outer=20mm,inner=40mm,top=30mm,bottom=20mm]{geometry}
\if@pdflatex
\RequirePackage[pdftex]{graphicx}
\else
\RequirePackage[dvips]{graphicx}
\fi
\RequirePackage{setspace}
\newcommand*{\thesisauthor}[1]{\gdef\@thesisauthor{#1}}
\newcommand*{\thesisauthorlastname}[1]{\gdef\@thesisauthorlastname{#1}}
\newcommand*{\thesisauthorpreviousdegrees}[1]{\gdef\@thesisauthorpreviousdegrees{#1}}
\newcommand*{\thesisauthorstudentid}[1]{\gdef\@thesisauthorstudentid{#1}}
\newcommand*{\thesisauthoremail}[1]{\gdef\@thesisauthoremail{#1}}
\newcommand*{\thesismonth}[1]{\gdef\@thesismonth{#1}}
\def\@thesismonth{\ifcase%
\month\or January%
\or February%
\or March%
\or April%
\or May%
\or June%
\or July%
\or August%
\or September%
\or October%
\or November%
\or December\fi} % use current month as default
\newcommand*{\thesisyear}[1]{\gdef\@thesisyear{#1}}
\def\@thesisyear{\number\year} % use current year as default
\newcommand*{\thesistitle}[1]{\gdef\@thesistitle{#1}}
\newcommand*{\thesissupervisor}[1]{\gdef\@thesissupervisor{#1}}
\newcommand*{\thesissupervisoremail}[1]{\gdef\@thesissupervisoremail{#1}}
\newcommand*{\thesisassocsupervisor}[1]{\gdef\@thesisassocsupervisor{#1}}
\newcommand*{\thesisassocsupervisoremail}[1]{\gdef\@thesisassocsupervisoremail{#1}}
%% Set up these ones with default values
\gdef\@thesisdepartment{Clayton School of Information Technology}
\newcommand*{\thesisdepartment}[1]{\gdef\@thesisdepartment{#1}}
\newcommand*{\thesisuniversity}[1]{\gdef\@thesisuniversity{#1}}
\def\@thesisuniversity{The University of Newcastle}
\newcommand*{\thesistypist}[1]{\gdef\@thesistypist{#1}}
\def\@thesistypist{the author}
\newcommand*{\thesisdedication}[1]{\gdef\@thesisdedication{#1}}
\newcommand{\thesisdefaultbaselinestretch}{1.5}
\newcommand{\thesistypetypesize}{\large}
\newcommand{\thesistitletypesize}{\huge}
\newcommand{\thesistitlebold}{\textbf{\thesistitletypesize\@thesistitle}}
\newcommand{\thesisstudenttypesize}{\large}
\newcommand{\thesisstudentbold}{\textbf{\Large \thesisstudenttypesize \thesisstudent \normalsize}}
\newcommand{\thesisdegreetypesize}{\Large}
\newcommand{\thesistitlepagefont}{\fontsize{14}{14}\selectfont}
\newcommand{\thesiscopyrightholder}{\@thesisauthor}
\newcommand{\thesiscommittee}{Supervising Committee:}
\newcommand{\thesiscommitteesize}{5}
\newcommand{\thesisvitahead}{Contribution of the Thesis}
\newcommand{\thesisvitaheadtypesize}{\huge\bfseries}
\newcommand{\thesisacknowledgmenthead}{Acknowledgments}
\newcommand{\thesisacknowledgmentsigname}{\@thesisauthor}
\newcommand{\thesisacknowledgmentsignametype}{\large}
\newcommand{\thesisacknowledgmentsigplace}%
    {{\slshape
        \@thesisuniversity \\
        \@thesismonth\ \@thesisyear}}
\newcommand{\thesisstudent}{%
\ifx\undefined\@thesisauthorpreviousdegrees
\@thesisauthor
\else
\@thesisauthor, \@thesisauthorpreviousdegrees
\fi
}
\widowpenalty =10000
\clubpenalty  =10000
\brokenpenalty=10000
\renewcommand{\frontmatter}{%
  \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{roman}
  \@openrightfalse
  \pagestyle{plain}}
\renewcommand{\mainmatter}{%
  \cleardoublepage
  \@mainmattertrue
  \pagenumbering{arabic}
  \if@wasopenright
   \@openrighttrue % restore previous setting
  \else
   \@openrightfalse
  \fi
  \pagestyle{headings}}
%% \section{Frontmatter}
\newcommand{\thesisdedicationpage}{%
    \strut \vfill
    \begin{spacing}{1.5}
    \begin{center}
      \@thesisdedication
    \end{center}
    \end{spacing}
    \vfill \strut
    \newpage}
%% \begin{environment}{thesisacknowledgments}
\newenvironment{thesisacknowledgments}
    {%
     \chapter*{\thesisacknowledgmenthead
         \@mkboth{\thesisacknowledgmenthead}
                 {\thesisacknowledgmenthead} }
     \addcontentsline{toc}{chapter}{\thesisacknowledgmenthead}
     \begin{spacing}{1.4}}
    {\nopagebreak\end{spacing} \par\nopagebreak
     \raggedleft \vspace{0 cm}
      {\thesisacknowledgmentsignametype\textit{\thesisacknowledgmentsigname}}
     \\ [0cm]
     \raggedleft
      \thesisacknowledgmentsigplace
     \newpage}
\newcommand{\thesistitlepage}{%
\thispagestyle{empty}
\begin{spacing}{1.5}
\begin{center}
\thesistitlebold \\[4mm]
by \\[4mm]
\thesisstudentbold \\

\ifx\undefined\@thesisauthoremail
\relax
\else
\if@litreview
\vspace{-8pt}
\texttt{\@thesisauthoremail}\\
\fi
\fi
\vspace{2cm}\textbf{\thesistypetypesize \thesistype} \\
\if@litreview
\relax
\else
\textit{\large submitted \thesisfulfillment \\ of the requirements
for the Degree of \\
}
\fi
\ifx\undefined\thesiscoursecode
\textbf{\thesisdegreetypesize \thesisdegree} \\
\else
\vspace{1cm} \textbf{\thesisdegreetypesize \thesisdegree\ }  \\
\fi
\vspace{12mm}
\ifx\undefined\@thesissupervisor
\ClassError{cssethesis}{a thesissupervisor must be defined when
the litreview option is used}{}
\else
Supervisor: \@thesissupervisor\\
\fi
\ifx\undefined\@thesisassocsupervisor
\relax
\else
Associate Supervisor: \@thesisassocsupervisor\\
\fi

\hspace{1cm}
\begin{center}
\includegraphics[width=5cm]{images/newcastleLogo}
\end{center}
\vspace{1cm} {\large \@thesisdepartment} \\ [0.42cm]
\vspace{8mm}
\@thesismonth, \@thesisyear
\end{center}
\end{spacing}
    \newpage}
\newcommand{\thesiscopyrightpage}{%
    \thispagestyle{empty}
    \strut \vfill
    \begin{center}
      \begin{spacing}{2}
      \copyright\ Copyright \\ by \\ \thesiscopyrightholder \\ \@thesisyear
      \end{spacing}
    \end{center}
    \vfill \strut
    \newpage}
\newenvironment{thesisabstract}{%
     \newpage
     \addcontentsline{toc}{chapter}{Abstract}
        \Huge  \noindent\textsc{Abstract}  \normalsize \\
\vspace{7mm}

}
     \newpage
\newcommand{\thesisdeclarationpage}{%
    \begin{center}
      \begin{spacing}{1.5}
      \thesistitlebold
      \end{spacing}
    \end{center}
    \vspace{20mm}
    \begin{center}
    {\bf Statement of Originality}
    \end{center}

This work contains no material which has been accepted for
the award of any other degree or diploma in any university
or other tertiary institution and, to the best of my knowledge
and belief, contains no material previously published
or written by another person, except where due reference
has been made in the text. I give consent to this copy of
my thesis, when deposited in the University Library, being
made available for loan and photocopying subject to the
provisions of the Copyright Act 1968.

    \vspace{15mm}
    \hfill \begin{minipage}{67mm}
                     \begin{spacing}{1}
                     \vspace{10mm}
                     \setlength{\unitlength}{1mm}
                     \begin{picture}(67,1)(0,0)
                        \line(1,0){67}
                     \end{picture} \\
                     \@thesisauthor \\
                     \today
                     \end{spacing}
                   \end{minipage}
    \newpage}
\newcommand{\thesissignaturepage}{%
    \begin{center}
      \begin{spacing}{1.5}
      \thesistitlebold
      \end{spacing}
    \end{center}
    \vspace{20mm}
    \begin{center}
      {\bf \thesistype\ Acceptance}
    \end{center}
    \begin{spacing}{1}
    This student's \thesistype, entitled
    \textbf{\@thesistitle}
    has been examined by the undersigned committee of
    examiners and has received full approval for acceptance \thesisfulfillment\
    of the requirements for the degree of \thesisdegree.
    \end{spacing}

    \vspace{15mm}
    \hbox to \hsize{\hfill APPROVAL: \begin{minipage}[b]{67mm}
                     \setlength{\unitlength}{1mm}
                     \begin{picture}(67,-70)
                       \multiput(0,-2)(0,-10)
                         {\thesiscommitteesize}{\line(1,0){67}}
                     \end{picture}
                   \end{minipage} Chief Examiner}
    \newpage}
\newcommand{\thesisshorttitlepage}{%
    \vbox to 4.1in{\vfil
      \hbox to \hsize {Short Title: \thesisshorttitle \hfill
         \@thesisauthorlastname, \thesisdegreeabbreviation\ \@thesisyear
         \hspace{0.5in}}}
    \newpage}
\renewcommand{\listoffigures}{%
  \chapter*{\listfigurename}%
  \addcontentsline{toc}{chapter}{\listfigurename}%
  \@starttoc{lof}
}
\renewcommand{\listoftables}{%
  \chapter*{\listtablename}%
  \addcontentsline{toc}{chapter}{\listtablename}%
  \@starttoc{lot}
}
%% \section{Mainmatter}
\newif\if@appendix\@appendixfalse
\renewcommand{\appendix}{\par
  \setcounter{chapter}{0}%
  \setcounter{section}{0}%
  \renewcommand{\@chapapp}{\appendixname}%
  \renewcommand{\thechapter}{\Alph{chapter}}
  \@appendixtrue}
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \if@appendix
                           \addcontentsline{toc}{chapter}%
                                   {\appendixname\ \thechapter\ #1}%
                         \else
                           \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#1}%
                         \fi
                       \else
                         \addcontentsline{toc}{chapter}{#1}%
                       \fi
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}
\renewcommand{\l@chapter}[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak%
      \leaders\hbox{$\m@th \mkern \@dotsep mu.\mkern \@dotsep mu$}\hfill
      \nobreak\hbox to\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}
\newenvironment{thesisauthorvita}{%
     \clearpage
     \chapter*{\thesisvitahead
         \@mkboth{\uppercase{\thesisvitahead}}
                 {\uppercase{\thesisvitahead}}}
    \addcontentsline{toc}{chapter}{\thesisvitahead}
    \begin{spacing}{\thesisdefaultbaselinestretch}}
    {\end{spacing}     }
\renewcommand{\bibname}{References}
\renewenvironment{thebibliography}[1]
     {\chapter*{\bibname%
      \addcontentsline{toc}{chapter}{\bibname}
        \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newcount\hour \newcount\minute
\hour=\time  \divide \hour by 60
\minute=\time
\loop \ifnum \minute > 59 \advance \minute by -60 \repeat
\def\thesistime{\ifnum \hour<13 \number\hour:%
                      \ifnum \minute<10 0\fi
                      \number\minute
                      \ifnum \hour<12 \ am\else \ pm\fi
         \else \advance \hour by -12 \number\hour:%
                      \ifnum \minute<10 0\fi
                      \number\minute \ pm\fi}
\def\timestamp{\thesistime, \today}
\newcommand{\@uppercase}[1]{{\expandafter\uppercase\expandafter{#1}}}
\newcommand\@separator{\vrule height.4pt depth0pt width3.5in}
\newcommand\@numberword[1]{\ifcase#1 zero\or one\or two\or three\or four\or five\or six\or seven\or eight\else nine\fi\relax}
\endinput
%%
%% End of file `cssethesis.cls'.