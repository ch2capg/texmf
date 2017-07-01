%  Revision history
%  --------------------------------------------------
%
%       Revised by Christian Power October 2016
%       Originally written by Christian Power
%            (power22c@gmail.com) 25.09.2016
%
%  Thesis style file for the University of Tübingen in DIN A5 for the
%  Mathematisch Naturwissenschaftliche faculty.
%  Copyright (c) 2016 Christian Power.  All rights reserved.
% ----------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tuebingenDiss}[2017/06/05 v0.0.6 Thesis class]

% \LoadClass[a5paper, twoside, BCOR=1cm, DIV=calc]{scrreprt}
\LoadClass[a5paper, DIV=calc]{scrbook}
% \KOMAoptions{headheight=28.56007pt, BCOR=1cm, DIV=last}
% \recalctypearea
% \KOMAoptions{DIV=last}
\RequirePackage[headsepline=.5pt]{scrlayer-scrpage}
\RequirePackage{enumitem}
\RequirePackage[titles]{tocloft}
% --------------------------------------------------
% Costume headers
% --------------------------------------------------
\RequirePackage{stdPack}
\RequirePackage{hyph}
\RequirePackage{capgPalatino}
% \RequirePackage[small,euler-digits,euler-hat-accent,T1]{eulervm}
\RequirePackage[mathpazo]{flexisym}
\RequirePackage{breqn}
\RequirePackage{capgThm}
\RequirePackage{bigChap} 
\RequirePackage{mathMacr}
\RequirePackage[colorlinks=true,pdfpagelabels]{hyperref}
% \hypersetup{linkcolor=blue, citecolor=blue}
\hypersetup{linkcolor=black, citecolor=black}

\RequirePackage{epigraph}
\RequirePackage{newfloat}
\RequirePackage{caption}
\setlength\epigraphwidth{8cm}
\setlength\epigraphrule{0pt}
\recalctypearea

\renewcommand*\labelitemi{\(\bullet\)}

% ----------------------------------------------------------------------
%  Creates the title page and the second page according to the 
%  requirements of the University of Tübingen.
% ----------------------------------------------------------------------
\RequirePackage[ngerman, english]{babel}
\newcommand*{\notdoneyet}{Currently not set. Please fix this.}
\newcommand*{\supervisor}[1]{\gdef\@supervisor{#1}}
\newcommand*{\@supervisor}{\texttt{\string\supervisor} \notdoneyet}
\newcommand*{\supervisorTwo}[1]{\gdef\@supervisorTwo{#1}}
\newcommand*{\@supervisorTwo}{\texttt{\string\supervisorTwo} \notdoneyet}
\newcommand*{\dean}[1]{\gdef\@dean{#1}}
\newcommand*{\@dean}{\texttt{\string\dean} \notdoneyet}
\newcommand*{\gebOrt}[1]{\gdef\@gebOrt{#1}}
\newcommand*{\@gebOrt}{\texttt{\string\gebOrt} \notdoneyet}
\newcommand*\academicDegree[1]{\gdef\@academicDegree{#1}}
\newcommand*\@academicDegree{ }
\def\mysplit#1.#2.#3.{\gdef\@dissDay{#1}\gdef\@dissMonth{#2}\gdef\@dissYear{#3}}
\gdef\splitdate#1{\expandafter\mysplit#1.}
\newcommand*{\dissDate}{\@dissDay.\@dissMonth.\@dissYear}
\renewcommand*{\maketitle}{%
\begin{titlepage}
  \centering
  {\huge\bfseries\@title\unskip\strut\par}
  \vfill
  \begin{otherlanguage}{ngerman}
    \textbf{Dissertation} \\
    der Mathematisch-Naturwissenschaftlichen Fakultät \\
    der Eberhard Karls Universität Tübingen \\
    zur Erlangung des Grades eines \\
    Doktors der Naturwissenschaften \\
    (Dr.\ rer.\ nat.) \\
    \vfill
    vorgelegt von \\[1ex]
    \@academicDegree\ \@author \\[1ex]
    aus \@gebOrt
    \vfill
    Tübingen \\ \@dissYear
  \end{otherlanguage}
\end{titlepage}
% \phantom{.}
% \vfill
% \begin{otherlanguage}{ngerman}
%   \noindent Veröffentlicht mit Genehmigung der 
%   Mathe\-mat\-isch\--Na\-tur\-wis\-sen\-scha\-ft\-li\-chen 
%   Fakultät der Eberhard Karls Universität Tübingen \\[2ex]
%   Tag der mündlichen Qualifikation: \hfill \dissDate \\
%   Dekan: \hfill  \@dean \\
%   1. Berichterstatter: \hfill \@supervisor \\
%   2. Berichterstatter: \hfill \@supervisorTwo 
% \end{otherlanguage}
\cleardoublepage
}
\endinput