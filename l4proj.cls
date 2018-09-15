% =============================================================================
% l4proj.cls
%
% Template for final year projects in the School of Computing Science at the
% University of Glasgow. Adapted from the level 3 project template originally
% provided by Colin Perkins <csp@dcs.gla.ac.uk>.
%
% =============================================================================
%\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{l4proj}[%
2009/01/09 Colin Perkins <csp@dcs.gla.ac.uk>.%
2009/09/16 Modified by Tim Storer <tws@dcs.gla.ac.uk> to support non pdf modes.%
2011/02/15 Modified by Gregg Hamilton <hamiltgr@dcs.gla.ac.uk> for use in final year projects.%
2012/10/18 Modified by Patrick Prosser, use geometry to control margins, simplified.%
2018/09/14 Modified by John Williamson, improve typographic appearance%
]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}

\ProcessOptions
\LoadClass[10pt,a4paper]{report}

\usepackage{microtype}
\usepackage{anyfontsize}
\RequirePackage{amsmath,amsfonts,amsbsy,amssymb,amsthm}
\usepackage{abstract}
\usepackage{natbib}
\usepackage{etoolbox}
\usepackage{ifpdf}
\usepackage{titlesec}
\usepackage{color}
\usepackage{xcolor}
\usepackage{parskip}
\usepackage{listings}

% from: https://gist.github.com/FelipeCortez/10729134
\definecolor{bluekeywords}{rgb}{0.13, 0.19, 1}
\definecolor{greencomments}{rgb}{0.1, 0.5, 0.2}
\definecolor{redstrings}{rgb}{0.8, 0.15, 0.1}
\definecolor{graynumbers}{rgb}{0.5, 0.5, 0.5}
\definecolor{subtlegray}{rgb}{0.98, 0.98, 0.98}
\usepackage{lstautogobble}
\usepackage{listings}
\lstset{
    autogobble,    
    columns=fullflexible,
    showspaces=false,
    showtabs=false,
    breaklines=true,
    showstringspaces=false,
    breakatwhitespace=true,
    escapeinside={(*@}{@*)},
    rulecolor=\color{lightgray},
    backgroundcolor=\color{subtlegray},
    commentstyle=\color{greencomments},
    keywordstyle=\color{bluekeywords},
    stringstyle=\color{redstrings},
    numberstyle=\color{graynumbers},
    basicstyle=\ttfamily\linespread{1.15}\footnotesize,
    frame=tb,
    framesep=12pt,
    framexleftmargin=12pt,
    tabsize=4,
    captionpos=b
}
%% ---



\usepackage{numprint}

\usepackage[T1]{fontenc}
\usepackage{FiraMono}
\usepackage[sfdefault,scaled=.85]{FiraSans}
\usepackage{newtxsf}

\ifpdf
\usepackage[pdftex]{graphicx}
\else
\usepackage{graphicx}
\fi
\usepackage{sectsty}
\usepackage[hidelinks]{hyperref}
\usepackage{caption}

\allsectionsfont{\sffamily}
\renewcommand{\abstractnamefont}{\normalfont\sffamily\Huge\bfseries}
\usepackage[toc,page]{appendix}
\usepackage{erewhon}
%\RequirePackage{xunicode} % Unicode support for LaTeX character names (accents, European chars, etc.).


\usepackage[top=4.0cm,bottom=5.5cm]{geometry}
\setlength{\parskip}{11pt plus 2pt}

\renewcommand\maketitle{\begin{titlepage}%
  \definecolor{UniBlue}{HTML}{00355F}
  
\let\footnotesize\small
\let\footnoterule\relax
\let\footnote \thanks
\vspace{1in}
\includegraphics[width=0.4\linewidth, trim=1.0cm 1.0cm 1.0cm 1.0cm]{images/CompSci_colour}

\color{UniBlue}
\vspace{2cm}
  \Large
  \vskip 8em%
  \noindent
  {\LARGE \sffamily \@title \par}%
  \large
  \lineskip .75em%
  \noindent
  \begin{tabular}[t]{@{}l}%
    \textbf{\@author}
  \end{tabular}\par%
  \vskip 3em%
  \noindent
  
  \vskip 6em%
  \noindent
  \vfill
  Level 4 Project Dissertation\\ \@date
  \vfill
\end{titlepage}%
\setcounter{footnote}{0}%
\global\let\thanks\relax
\global\let\maketitle\relax
\global\let\@thanks\@empty
\global\let\@author\@empty
\global\let\@date\@empty
\global\let\@consentname\@empty
\global\let\@consentdate\@empty

\global\let\@title\@empty
\global\let\title\relax
\global\let\author\relax
\global\let\date\relax
\global\let\and\relax

}

\titleformat{\chapter}[display]
  {\normalfont\sffamily\bfseries}{}{0pt}{\Huge}

\newcommand{\educationalconsent}{
\ifdefined\consentname
\newpage
\section*{Education Use Consent}

I hereby give my permission for this project to be shown to other
University of Glasgow students and to be distributed in an electronic
format.  \textbf{Please note that you are under no obligation to sign 
this declaration, but doing so would help future students.}

\begin{tabular}{@{}llll}
      &                     &            &                     \\
      &                     &            &                     \\
Signature: & \consentname & Date: & \consentdate \\
      &                     &            &                     \\
      &                     &            &                     \\
\end{tabular}
\else
\fi 

}

\addtolength\textwidth{0.0in}
\addtolength\oddsidemargin{0.0in}
\addtolength\textheight{1.25in}
\addtolength\topmargin{-0.5in}
\setlength{\parindent}{0pt}

\pagenumbering{roman}

\titlespacing{\section}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}