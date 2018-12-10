\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{crcv}[1998/01/03 v1.0 class for curriculum vitea]
\LoadClass[a4paper,10pt]{article}
\RequirePackage[2.5cm]{newdesc}[1998/01/03]
\RequirePackage{calc}

\newcommand{\PHOTO}{}%\fbox{\setlength{\unitlength}{1cm}%
%\begin{picture}(2,2.5)\put(.3,1.2){\epsfig{file=qq}}\end{picture}}}

\DeclareOption{NoPhoto}{\renewcommand{\PHOTO}{%
\mbox{\setlength{\unitlength}{1cm}%
\begin{picture}(2,2.5)\end{picture}}}}
\ProcessOptions

\setlength{\textwidth}{19cm}
\setlength{\marginparwidth}{0cm}
\setlength{\oddsidemargin}{-1.54cm}
\setlength{\evensidemargin}{-1.54cm}
\setlength{\headheight}{0cm}
\setlength{\topmargin}{0cm}
\setlength{\headsep}{0cm}
\setlength{\footskip}{0cm}
\setlength{\textheight}{27.7cm}
\setlength{\voffset}{-1.75cm}
\pagestyle{empty}

\renewcommand\section{\@startsection{section}{1}{\z@}%
{-3.5ex \@plus -1ex \@minus -.2ex}%
{0.1ex}%
{\normalfont\Large\bfseries}}
\let\presection=\section

\renewcommand{\section}[1]{\presection*{#1}\vspace{-1.5ex}%
\noindent\rule{\textwidth}{1pt}\vspace*{.5ex}}

\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
{-3.5ex \@plus -1ex \@minus -.2ex}%
{1.5ex \@plus .2ex}%
{\normalfont\large\itshape}}

\let\presubsection=\subsection
\renewcommand{\subsection}[1]{\presubsection*{#1}}

\newcommand{\CoordonneesData}{\mbox{}}
\newcommand{\Coordonnees}[1]{\renewcommand{\CoordonneesData}{#1}}

\newcommand{\AutresInfosData}{\mbox{}}
\newcommand{\AutresInfos}[1]{\renewcommand{\AutresInfosData}{#1}}

\newcommand{\MakeEntete}{\noindent%
\parbox[b]{.4\textwidth}{\CoordonneesData}\hfill\PHOTO\hfill
\parbox[b]{.4\textwidth}{\raggedleft\AutresInfosData}}

\let\olditemize=\itemize
\let\endolditemize=\enditemize
\renewenvironment{itemize}{\begin{olditemize}%
\setlength{\itemsep}{-0.5ex}\setlength{\parsep}{0cm}}%
{\end{olditemize}}
\renewcommand{\labelitemi}{-}

\DeclareTextFontCommand{\emph}{\bfseries}
