% ===================================================================
% LaTeX Class for Thesis : S1 Matematika FMIPA Unmul
% Author : Langgeng Prassadewo Sukma Adi Winoto Basla
% NIM    : 1807065014
% GitHub : 
% 
% Special Thanks and Code Reference to :
%   1. Qonita Qurrota A'yun, S.Si., M.Sc.
%   2. Tim Kontributor Template Skripsi S1 Matematika 
%   3. Dir Sulaiman      : https://github.com/dirsulaiman/skripsi
%   4. Guntur D Putra    : https://github.com/gtrdp/template-skripsi
%   5. Hasan S. Panigoro : https://repository.ung.ac.id/kategori/show/dokumen_publik_ung/15591/template-penulisan-skripsi-program-studi-matematika-latex.html
%   
% License:
% 
% 
% ========================================================================

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{konfigurasi/MathFmipaUnmul}[2024/07/17 Skripsi S1 Matematika FMIPA Unmul Style]
\LoadClass[
    a4paper,
    12pt,
    oneside,
    onecolumn,
    final
]{book}

% ========================================================================
% GENERAL REQUIRED PACKAGE
% ========================================================================

% Package use for showing margin line and frames
\RequirePackage{showframe}

% Write an Algorithm Block
\RequirePackage{algorithm}
% \RequirePackage{algorithmic}

% Indent First Paragraph
\RequirePackage{indentfirst}

% Lipsum Dummy Generator
\RequirePackage{lipsum}

% BlindText Generator
\RequirePackage{blindtext}

% Justify and Custom Column
\RequirePackage{ragged2e}
\RequirePackage{multirow}
\RequirePackage{multicol}
\RequirePackage{array}
\newcolumntype{L}[1]{>{\raggedright\let\newline \\ \arraybackslash\hspace{0pt}}m{#1}} % Making new column type named L
\newcolumntype{C}[1]{>{\centering\let\newline \\ \arraybackslash\hspace{0pt}}m{#1}} % Making new column type named C
\newcolumntype{R}[1]{>{\raggedleft\let\newline \\ \arraybackslash\hspace{0pt}}m{#1}} % Making new column type named R
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}}
\renewcommand{\arraystretch}{1.2}


% Font Similar to Times New Roman
% \RequirePackage{pslatex}
\RequirePackage{times}

% Make Capitalise Each Words
\RequirePackage{mfirstuc}

% Setup equation environment
\RequirePackage{etoolbox}

% American Mathematical Society Font and any Mathematics Notation
% \RequirePackage{amsfonts}
\RequirePackage{amsmath}

% American Mathematical Society for Symbol
\RequirePackage{amssymb}

% Using Mathtools
\RequirePackage{mathtools}

% Using Term of Math
\RequirePackage{amsthm}

% Make a Matrix with column and row name
\RequirePackage{nicematrix}

% Using landscape page of some pages
\RequirePackage{lscape}

% Making Math Graphix etc
\RequirePackage{tikz}

% For coloring table or other elements
\RequirePackage{color}
\RequirePackage{colortbl}

% For making list with bulleting or numbering
\RequirePackage{enumerate}
\RequirePackage{enumitem}

% For change layout of pages, include margin, indentation, and text width
\RequirePackage{changepage}

% For creating high-quality plots and visualization
\RequirePackage{pgfplots}

% For include Graphic, Picture, or Wrap-pic
\RequirePackage{graphicx}
\RequirePackage{wrapfig}
\RequirePackage[export]{adjustbox}

% For make bold math symbols
\RequirePackage{bm}

% For higlight Matlab Code
\RequirePackage{matlab-prettifier}

% For make encoding character to UTF-8
\RequirePackage[utf8]{inputenc}

% For enhanced control over math typesetting
\RequirePackage{nccmath}

% For creating high-quality table
\RequirePackage{booktabs}

% For text effect like highlight, underline, etc
\RequirePackage{soul}

% For making frame box
\RequirePackage{mdframed}
\newmdenv[]{kotak}

% For making hyperlink text
\RequirePackage[
    colorlinks = false,
    linkcolor = blue,
    citecolor = black,
    bookmarksopen = false,
    bookmarksnumbered = true,
    pdfstartview = FitH,
    pdfview = FitH
]{hyperref}

% Set space of paragraph line
\RequirePackage{setspace}
% \singlespacing % For 1.0 space
\onehalfspacing % For 1.5 space
% \doublespacing % For 2.0 space
% \setstretch{1.5} % For 1.5 space exactly similar to Word

% For adding bibliography, index, table of contents, etc
\RequirePackage[
    backend = biber,
    style = apa,
    % maxbibnames = 15,
    % maxcitenames = 2,
    giveninits = true,
    uniquename = false
]{biblatex}
\RequirePackage{csquotes}

% Permission for make setting of url
\RequirePackage{url}
\urlstyle{same}

% Setup of caption
\RequirePackage[
    font = footnotesize,
    format = plain,
    labelfont = bf,
    textfont = up
]{caption}

% For calculate some formula in LaTeX
\RequirePackage{calc}

% For using extended conditional logic command
\RequirePackage{ifthen}
\RequirePackage{xifthen}

% Including PDF file
\RequirePackage{pdfpages}

% For setup caption
\RequirePackage[labelsep = space]{caption}

% For Capitalise each words
\RequirePackage{mfirstuc}

% For ensure \MakeUpperCase work properly
\RequirePackage{textcase}


% =====================================================================
% CONFIGURATION INIT
% =====================================================================
\newif\ifpdf
\ifx \pdfoutput\undefined
    \pdffalse
\else
    \pdfoutput = 1
    \pdftrue
\fi


% =====================================================================
% PAGE LAYOUT, MARGIN, INDENTATION
% =====================================================================

% Page layout and Margin of Page
\RequirePackage[
    paper = a4paper,
    headheight = 0pt,
    left = 4cm,
    top = 4cm,
    right = 3cm,
    bottom = 3cm
]{geometry}

% Indentation distance
\setlength{\parindent}{0.675cm}


% =====================================================================
% SETUP HEADER AND FOOTER INIT
% =====================================================================
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\lhead{}
\chead{}
\rhead{\thepage}
\lfoot{}
\cfoot{}
\rfoot{}
\renewcommand{\headrulewidth}{-2pt}

\renewcommand{\headrulewidth}{0.0pt}
\fancyhf{}
\fancyhead[L]{}
\fancyhead[C]{}
\fancyhead[R]{\thepage}
\fancyfoot[L]{}
\fancyfoot[C]{}
\fancyfoot[R]{}
\renewcommand{\headrulewidth}{0.0pt}
\renewcommand{\footrulewidth}{0.0pt}
\pagestyle{fancy}

\setlength{\headheight}{15pt}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[L]{}
\fancyhead[C]{}
\fancyhead[R]{}
\fancyfoot[L]{}
\fancyfoot[C]{}
\fancyfoot[R]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

\fancypagestyle{plain}{
    \fancyhf{}
    \fancyhead[L]{}
    \fancyhead[R]{}
    \fancyfoot[C]{\thepage}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}

\fancypagestyle{awal}{
    \fancyhf{}
    \fancyhead[L]{}
    \fancyhead[R]{}
    \fancyfoot[C]{\thepage}
    \renewcommand{\headrulewidth}{0pt}
    \renewcommand{\footrulewidth}{0pt}
}


% =====================================================================
% SETUP TITLE OF CHAPTER, SECTION, SUBSECTION, ETC
% =====================================================================

% Change setting title of chapter, section, subsection, etc
\RequirePackage{titlesec}

% Title setup for chapter
\titleformat{\chapter}
[display]
{\center\small\bfseries}
{\small \uppercase{\chaptertitlename~}\thechapter}
{1ex}
{\bfseries}
\titlespacing{\chapter}{-1.5cm}{-1.2cm}{0.5cm}

% Title setup of section
\titleformat{\section}
[block]
{\bfseries}
{\bfseries\thesection}{1ex}{\bfseries}
\titlespacing{\section}{0cm}{3ex}{-0.5cm}

% Title setup of subsection
\titleformat{\subsection}
[hang]
{\bfseries}
{\bfseries\thesubsection}{1ex}{\bfseries}
\titlespacing{\subsection}{0cm}{3ex}{0ex}

% Title setup of subsubsection
\titleformat{\subsubsection}
[hang]
{\bfseries}
{\bfseries\thesubsubsection}{1ex}{\bfseries}
\titlespacing{\subsubsection}{0cm}{3ex}{0ex}


% =====================================================================
% SETUP FOR FLOATING POSITION OF OBJECTS
% =====================================================================

% Change setting of floating position of objects
\RequirePackage{float}

% Setup floating position of objects
\floatplacement{figure}{H} % for figure
\floatplacement{table}{H} % for table
\floatplacement{algorithm}{H} % for algorithm block
\floatplacement{subfig}{H} % for subfig
\floatplacement{wrapfig}{H} % for wrapfig

% Setting after space of figure environment
\AtEndEnvironment{figure}{\vspace{-4mm}}


% =====================================================================
% SETUP TOC, LOF, dan LOT
% =====================================================================

% Change setting contents in TOC, LOF, LOT, and list of algorithm
\RequirePackage{titletoc} % editing format of TOC
\RequirePackage{tocloft} % editing interface of TOC. LOF. LOT
% \RequirePackage[titles]{tocloft} 
\RequirePackage{listings}

% setup link page number in TOC
\makeatletter
\def\contentsline#1#2#3#4{
    \ifx\\#4\\
        \csname l@#1\endcsname{
            #2
        }{
            #3
        }
    \else
        \csname l@#1\endcsname{
            \hyper@linkstart{link}{#4}{#2}\hyper@linkend
        }{
            \hyper@linkstart{link}{#4}{#3}\hyper@linkend
        }
    \fi
}

% Setup for section in TOC
\renewcommand\section{
    \@startsection{section}{1}{\z@}
    {-3.5ex \@plus -1ex \@minus -.2ex}
    {2.3ex \@plus .2ex}
    {\noindent\bfseries\thesection}
}
\makeatother

% Setup for subsection in TOC
% \titleformat{\subsection}
% [hang]
% {}
% {\bfseries\thesubsection}{1ex}{\bfseries}
% \titlespacing{\subsection}{0cm}{3ex}{0ex}

% Setup depth of section number
\setcounter{secnumdepth}{3}

% Setup depth of TOC
\setcounter{tocdepth}{3}

% Format the TOC titles
\renewcommand{\contentsname}{DAFTAR ISI}
\renewcommand{\cfttoctitlefont}{\hfill \normalfont \fontsize{12}{14} \selectfont \bfseries}
\renewcommand{\cftaftertoctitle}{\hfill}

% Adjust spacing after TOC titles and before TOC entries
\setlength{\cftbeforetoctitleskip}{0em}
\setlength{\cftaftertoctitleskip}{1.5em}

% Format the LOF titles
\renewcommand{\listfigurename}{DAFTAR GAMBAR}
\renewcommand{\cftloftitlefont}{\hfill \normalfont \fontsize{12}{14} \selectfont \bfseries}
\renewcommand{\cftafterloftitle}{\hfill}

% Adjust spacing after LOF title and before LOF entries
\setlength{\cftbeforeloftitleskip}{0em}
\setlength{\cftafterloftitleskip}{1.5em}

% Format the LOT titles
\renewcommand{\listtablename}{DAFTAR TABEL}
\renewcommand{\cftlottitlefont}{\hfill \normalfont \fontsize{12}{14} \selectfont \bfseries}
\renewcommand{\cftafterlottitle}{\hfill}

% Adjust spacing after LOT title and before LOT entries
\setlength{\cftbeforelottitleskip}{0em}
\setlength{\cftafterlottitleskip}{1.5em}

% Setup length number of figure
\newlength{\mylen}
\renewcommand{\cftfigpresnum}{\figurename\enspace}
\renewcommand{\cftfigaftersnum}{}
\settowidth{\mylen}{\cftfigpresnum\cftfigaftersnum}
\addtolength{\cftfignumwidth}{\mylen}

% Setup chapter format in TOC
\renewcommand{\cftchapfont}{\normalfont\bfseries}
\renewcommand{\cftchappagefont}{\normalfont\bfseries}
\renewcommand{\cftdotsep}{1}
\renewcommand{\cftchapleader}{\bfseries\cftdotfill{\cftsecdotsep}}

% Setup up chapter label using "BAB" in front of number of chapter
\renewcommand{\cftchappresnum}{BAB }
\AtBeginDocument{\addtolength\cftchapnumwidth{\widthof{\bfseries BAB }}}
\setlength{\cftbeforechapskip}{4pt}

% Setup space and indent in TOC, LOF, LOT
\cftsetindents{chapter}{0em}{1.5em}
\cftsetindents{section}{1.5em}{2.5em}
\cftsetindents{subsection}{4em}{2.5em}
\cftsetindents{figure}{0em}{6em}
\cftsetindents{table}{0em}{5em}

% Setup label and space for figure and table
\renewcommand{\cftfigpresnum}{\bfseries Gambar }
\renewcommand{\cfttabpresnum}{\bfseries Tabel }

% Setup interface of list of algorithm format
\RequirePackage{algpseudocode}

% Setup Preference Algorithm label to "Lampiran" and indent in it
\makeatletter
% \cftsetindents{algorithm}{0em}{6em}
% \renewcommand{\cftalgpresnum}{\bfseries Lampiran }
\makeatother

% Removing Vertical Space in List
\newcommand*{\noaddvspace}{\renewcommand*{\addvspace}[1]{}}
\addtocontents{lof}{\protect\noaddvspace}
\addtocontents{lot}{\protect\noaddvspace}
\addtocontents{loa}{\protect\noaddvspace}

% Adding page number head
\addtocontents{toc}{~\hfill\textbf{Halaman}\par}
\addtocontents{lof}{~\hfill\textbf{Halaman}\par}
\addtocontents{lot}{~\hfill\textbf{Halaman}\par}
\addtocontents{loa}{~\hfill\textbf{Halaman}\par}

% Adjusting spacing in list
\renewcommand\cftchapafterpnum{\vskip0pt}
\renewcommand\cftsecafterpnum{\vskip0pt}
\setlength{\cftbeforechapskip}{2pt}
\setlength{\cftbeforesecskip}{2pt}
\setlength{\cftbeforefigskip}{2pt}
\setlength{\cftbeforetabskip}{2pt}

% Customizing section number format
\makeatletter
\renewcommand*{\@seccntformat}[1]{\csname the#1 \endcsname\hspace{0.13cm}}
\makeatother

% Adding list of appendix
\newcommand{\listofappendicesname}{DAFTAR LAMPIRAN}
\newlistof{appendices}{app}{\listofappendicesname}
\renewcommand{\cftapptitlefont}{\hfill \normalfont \fontsize{12}{14} \selectfont \bfseries}
\renewcommand{\cftafterapptitle}{\hfill}

% Adjust spacing after LOA title and before LOA entries
\setlength{\cftbeforeapptitleskip}{0em}
\setlength{\cftafterapptitleskip}{1.5em} 

% Setup list of appendix format
% \makeatletter
% \renewcommand{\listofappendices}{
%     \section*{\centering\bfseries\listofappendicesname}
%     \@starttoc{app}
% }
% \makeatother
\newcommand{\appendixentry}[1]{
    \refstepcounter{appendices}
    \addcontentsline{app}{appendices}{\protect\numberline{\theappendices}#1}
}

% Adding word "Lampiran" for label of appendix and the font
\renewcommand{\cftappendicespresnum}{Lampiran~}
\renewcommand{\cftappendicesafterpnum}{}
\renewcommand{\cftappendicesfont}{\centering\normalfont}

% Adding "Halaman" above appendix pages
\addtocontents{app}{~\hfill\textbf{Halaman}\par}


% =====================================================================
% SETUP FOR TERM USED IN MATH
% =====================================================================

% Making new theorem style for Math Term
\newtheoremstyle{dotlesstheorem}
{4mm} % abovespace
{4mm} % belowspace
{\itshape} % bodyfont
{0pt} % indent
{\bfseries} % headfont
{} % headpunct
{  } % headspace
{} % custom head spec

% Apply new theorem style "dotlesstheorem"
\theoremstyle{dotlesstheorem}

% Define new theorem called "Teorema"
\newtheorem{teorema}{Teorema}[chapter]
\renewcommand{\theteorema}{\arabic{chapter}.\arabic{teorema}}

% Define new theorem called "Lemma"
\newtheorem{lemma}[teorema]{Lemma}

% Define new theorem called "Sifat"
\newtheorem{sifat}[teorema]{Sifat}

% Define new theorem called "Akibat"
\newtheorem{akibat}[teorema]{Akibat}

% Define new theorem called "Proposisi"
\newtheorem{proposisi}[teorema]{Proposisi}

% Define new theorem called "Definisi"
\newtheorem{definisi}[teorema]{Definisi}

% Making new theorem style for Example Term
\newtheoremstyle{dotlessexample}
{4mm}  % abovespace
{4mm} % belowspace
{}  % bodyfont
{0pt} % indent
{\bfseries} % headfont
{} % headpunct
{  } % headspace
{} % custom head spec

% Apply new theorem style "dotlessexample"
\theoremstyle{dotlessexample}

% Define new theorem called "Contoh"
\newtheorem{contoh}[teorema]{Contoh}

% Define new theorem called "Algoritma"
\newtheorem{algoritma}[chapter]{Algoritma}
\renewcommand{\thealgoritma}{\arabic{chapter}.\arabic{algoritma}}

% Redefine "Proof" term to "Bukti"
\renewenvironment{proof}{\vspace{-2ex}\noindent{\bf Bukti.}}{\hfill$\blacksquare$\newline\vspace{-0.4cm}}
\def\faktor#1#2{\raise0.7ex\hbox{$#1$}\!\!\!\rotatebox{-11}{$\Big/$\!}\!\lower0.7ex\hbox{$#2$}}
\def\faktorr#1#2{\raise0.4ex\hbox{$#1$}\!\!\rotatebox{-11}{$\big/$\!}\lower0.4ex\hbox{$#2$}}

\renewcommand{\thefigure}{\arabic{chapter}.\arabic{figure}}


% =================================================================================
% SETUP OF BIBLIOGRAPHY
% =================================================================================


% Setup right justified cite
\newenvironment{rightcite}{
  \vspace{-4mm}
  \begin{flushright}
}{
  \end{flushright}
  \vspace{-5mm}
}


\DeclareCiteCommand{\textcite}
  {\boolfalse{cbx:parens}}
  {\usebibmacro{citeindex}%
   \ifboolexpr{%
     (not test {\iffieldundef{prenote}} and test {\ifnumequal{\value{citecount}}{1}})
     or
     (not test {\iffieldundef{postnote}} and test {\ifnumequal{\value{citecount}}{\value{citetotal}}})
   }
     {\usebibmacro{textcite}}
     {\printtext[bibhyperref]{\DeclareFieldAlias{bibhyperref}{default}\usebibmacro{textcite}\ifbool{cbx:parens}{\bibcloseparen\global\boolfalse{cbx:parens}}{}}}
  }
  {\ifbool{cbx:parens}{\bibcloseparen\global\boolfalse{cbx:parens}}{}\multicitedelim}
  {\usebibmacro{textcite:postnote}}

\let\oldtextcite\textcite
\renewcommand{\textcite}[1]{\oldtextcite{#1}\unskip}

\DefineBibliographyStrings{english}{andothers={dkk\adddot}}

\DeclareCiteCommand{\mycite}[\mkbibparens]
    {\usebibmacro{prenote}}
    {\def\nameyeardelim{\addcomma\addspace}%
        \usebibmacro{citeindex}%
        \usebibmacro{cite}%
        \def\nameyeardelim{\addspace}%
    }
    {}
    {\usebibmacro{postnote}}
    
\renewbibmacro{in:}{
    \ifentrytype{article}{}{\printtext{\bibstring{in}\intitlepunct}}
}

\DeclareFieldFormat[article,periodical]{pages}{#1}

\renewbibmacro*{journal+issuetitle}{
    \usebibmacro{journal}
    \setunit*{\addcomma \space}
    \iffieldundef{series}
        {}
        {
            \newunit
            \printfield{series}
            \setunit{\addspace}
        }
    \usebibmacro{volume+number+eid}
    \setunit{\addspace}
    \usebibmacro{issue+date}
    \setunit{\addcolon \space}
    \usebibmacro{issue}
    \newunit
}

\DefineBibliographyStrings{english}{
    and = {dan},
}


% =====================================================================
% SETUP FOR MATH GRAPHICS USING TIKZ
% =====================================================================

% Activated library in tikz
\usetikzlibrary{shapes.geometric, arrows, matrix}
\usetikzlibrary{positioning}
\RequirePackage{adjustbox}

% Setup for making flowchart
\tikzstyle{startstop} = [rectangle, rounded corners = 0.5cm, align = center, minimum width = 3cm, minimum height = 1cm, text centered, draw = black, fill = none]
\tikzstyle{inout} = [trapezium, trapezium left angle=70, trapezium right angle = 110, align = center, minimum width = 3cm, minimum height = 1cm, text centered, inner sep = 10pt, draw = black, fill = none]
\tikzstyle{manual} = [trapezium, trapezium left angle=130, trapezium right angle = 130, align = center, minimum width = 3cm, minimum height = 1cm, text centered, inner sep = 10pt, draw = black, fill = none]
\tikzstyle{process} = [rectangle, align = center, minimum width = 3cm, minimum height = 1cm, text centered, inner sep = 10pt, draw = black, fill = none]
\tikzstyle{decision} = [diamond, align = center, minimum width = 3cm, minimum height = 1cm, text centered, draw = black, fill = none]
\tikzstyle{arrow} = [very thick, ->, >=stealth]
\tikzset{
    page con/.style = {shape = signal, draw, signal to = south, text width = 3em, text height = 1.5em, align = center}
}

% Setup for making Graphs in Graph Theory
\tikzstyle{vertex} = [circle, minimum size = 7pt, fill = black, inner sep = 0pt]
\tikzstyle{edge} = [draw, thick, -]

% Setup after space of tikzpicture
\setlength{\abovecaptionskip}{0pt}


% =====================================================================
% SETUP FOR MAKING NEW VAR AND NEW COMMAND
% =====================================================================

% Command for italic text
\newcommand{\ti}[1]{\textit{#1}}

% Command for bold tex
\newcommand{\tb}[1]{\textbf{#1}}

% Command for underline text
\newcommand{\tu}[1]{\underline{#1}}

% Command for italic with bold text
\newcommand{\tbi}[1]{\textbf{\textit{#1}}}

% Command for italic with underline text
\newcommand{\tui}[1]{\underline{\textit{#1}}}

% Command for bold with underline text
\newcommand{\tbu}[1]{\underline{\textbf{#1}}}

% Command for adding note that apper in table
\newcommand{\todo}[1]{
    \begin{tabular}{| p{13.5cm} |}
        \rowcolor[rgb]{.6,.9.6}
        \tb{@todo} \\
        \rowcolor[gray]{1.}
        #1 \\
        \\
        \hline
    \end{tabular}
}

% Command for adding note for adding reference
\newcommand{\todoCite}{
    \begin{tabular}{| l |}
        \rowcolor[rgb]{.6,.9,.6}
        \tb{@todo} \\
        \rowcolor[gray]{1.}
        Referensi \\
        \\
        \hline
    \end{tabular}
}

% Command for include PDF file and apply this document style to it file
\newcommand{\inpdf}[1]{
    \includepdf[pages = -, pagecommand = {\thispagestyle{fancy}}]{#1.pdf}
}

% Command for include PDF file into document
\newcommand{\putpdf}[1]{\includepdf[pages = -]{#1.pdf}}

% Command for making new command or variable
\newcommand{\var}[2]{\newcommand{#1}{#2}}

% Command for making new command or variable that value will print out with all Capital 
\newcommand{\Var}[2]{\newcommand{#1}{\uppercase{#2}}}

% Command for adding sentences into table of contents
\newcommand{\addChapter}[1]{\phantomsection \addcontentsline{toc}{chapter}{\textbf{#1}}}

% Command for making print out LaTeX logos
\newcommand{\latex}{\LaTeX}

% Change contents label to Indonesian label
\renewcommand{\chaptername}{BAB}
\renewcommand{\figurename}{\tb{Gambar}}
\renewcommand{\tablename}{\tb{Tabel}}

\makeatletter
\renewcommand{\listalgorithmname}{DAFTAR LAMPIRAN}
\renewcommand{\ALG@name}{\tb{Lampiran}}
\makeatother

\newcommand{\pic}{Gambar}
\newcommand{\tab}{Tabel}
\newcommand{\equ}{Persamaan}

% Setup caption enviroment
\captionsetup[figure]{font = normalsize, labelfont = bf}
\captionsetup[table]{font = normalsize, labelfont = bf, justification = centering}

\allowdisplaybreaks