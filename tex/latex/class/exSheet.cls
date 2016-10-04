%  Revision history
%  --------------------------------------------------
%
%       Revised by Christian Power October 2016
%       Originally written by Christian Power
%            (power22c@gmail.com) 04.10.2016
%
%  Math exercise sheet template. 
%  Copyright (c) 2016 Christian Power.  All rights reserved.
% ----------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{exSheet}[2016/10/04 v0.0.0 Exercise sheet]
\LoadClass{scrartcl}
\RequirePackage[colorlinks=false,pdfpagelabels]{hyperref}
\RequirePackage{scrlayer-scrpage}
\RequirePackage{enumitem}
\RequirePackage{stdPack}
\RequirePackage{flexisym}
\RequirePackage{breqn}
\RequirePackage{mathMacr}
\RequirePackage[english, ngerman]{babel}

\newcommand*\notdoneyet{Currently not set. Please fix this.}
\newcommand*\lecturer[1]{\gdef\@lecturer{#1}}
\newcommand*\@lecturer{\texttt{\string\lecturer} \notdoneyet}
\newcommand*\university[1]{\gdef\@university{#1}}
\newcommand*\@university{\texttt{\string\university} \notdoneyet}
\newcommand*\institut[1]{\gdef\@institut{#1}}
\newcommand*\@institut{\texttt{\string\institut} \notdoneyet}
\newcommand*\course[1]{\gdef\@course{#1}}
\newcommand*\@course{\texttt{\string\course} \notdoneyet}
\newcounter{blattno}
\KOMAoptions{headheight=41pt}
\recalctypearea
\deftriplepagestyle{firstPage}{
  \begin{minipage}{.3\linewidth}
    \@university\\
    \@institut\\
    \@lecturer
  \end{minipage}
}
{}
{Tübingen, den \@date}
{}
{\thepage}
{}

\renewcommand*{\maketitle}{%
  \thispagestyle{firstPage}
  \begin{center}
    \underline{
      \textbf{\refstepcounter{blattno}\arabic{blattno}. \@title}}\\[2ex]
  \end{center}
  \vspace*{2ex}  
}