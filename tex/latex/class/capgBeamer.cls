% Revision history
% --------------------------------------------------
% 
%      October 2016 Christian Power (power@na.uni-tuebingen.de)
%      September 2016 Christian Power (power@na.uni-tuebingen.de)
%       Originally written by Christian Power
%            (power22c@gmail.com) 2015
%
%  Standard packages for my LaTeX beamer slides.
%  Copyright (c) 2016 Christian Power.  All rights reserved.
% ----------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{capgBeamer}[2016/10/03 v0.0.1 Slides]
\LoadClass[xcolor={usenames,dvipsnames}]{beamer}
\RequirePackage{stdPack}
\RequirePackage{capg_slides}
% ----------
\RequirePackage{tikz}
\RequirePackage{amsthm}
\usetikzlibrary{arrows,decorations.pathmorphing,backgrounds,positioning,fit,petri}
\RequirePackage{tcolorbox}
\RequirePackage{listings}
\RequirePackage{lstMatlabJulia}
