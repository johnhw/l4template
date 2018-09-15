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

\usepackage[titles]{tocloft}

\renewcommand{\cftdot}{}

% from: https://gist.github.com/FelipeCortez/10729134
\definecolor{bluekeywords}{rgb}{0.13, 0.19, 0.7}
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
%\usepackage{newtxsf}

\ifpdf
\usepackage[pdftex]{graphicx}
\else
\usepackage{graphicx}
\fi
\usepackage{sectsty}
\usepackage[hidelinks]{hyperref}
\usepackage[format=plain,
labelfont={bf,it},
textfont=it]{caption}

\allsectionsfont{\normalfont}
\renewcommand{\abstractnamefont}{\normalfont\Huge\scshape}
\usepackage[toc]{appendix}
\usepackage{erewhon}
%\RequirePackage{xunicode} % Unicode support for LaTeX character names (accents, European chars, etc.).

\usepackage{pagecolor}
\usepackage[top=4.0cm,bottom=5.5cm,left=3.5cm,right=3.5cm]{geometry}
\setlength{\parskip}{11pt plus 2pt}

\renewcommand\maketitle{\begin{titlepage}%
  \definecolor{UniBlue}{HTML}{00355F}
  
\let\footnotesize\small
\let\footnoterule\relax
\let\footnote \thanks

\vspace{1in}
\includegraphics[width=\linewidth, trim=1.0cm 1.0cm 1.0cm 1.0cm]{images/CompSci_colour.pdf}


\color{UniBlue}
\vspace{2cm}
  \Large
  \vskip 8em%
  \begin{center}
  \noindent
  {\Huge  \@title \par}%
  \Large
  \lineskip .75em%
  \noindent
  \begin{tabular}[t]{@{}l}%
    \textbf{\@author}
  \end{tabular}\par%
\end{center}
  \vskip 3em%
  \noindent
  
  \vskip 6em%
  \normalsize
  \noindent
  \vfill
  Level 4 Project Dissertation\\ \@date

  
\end{titlepage}%
\pagecolor{none}
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
\usepackage{fancyhdr}

\pagestyle{fancy}
% Clear the header and footer
\fancyhead{}
\fancyfoot{}
% Set the right side of the footer to be the page number
\fancyhead[R]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\fancypagestyle{plain}{%
    \renewcommand{\headrulewidth}{0pt}%
    \fancyhf{}%
    \fancyhead[R]{\thepage}%
}

\usepackage{xstring}
\titleformat{\chapter}[display]
  {\normalfont\scshape}{}{0pt}{
    \Huge
    \IfInteger{\thechapter}{\ifnum0=0\thechapter\relax\else\relax \thechapter.\ \fi}
    {\thechapter .\ }}
  [\titlerule]
  \titlespacing*{\chapter}      
  {0pt}{0pt}{15pt}  

\newcommand{\educationalconsent}{
\ifdefined\consentname
\newpage
\chapter*{Education Use Consent}

I hereby grant my permission for this project to be distributed and shown to other
University of Glasgow students and staff for educational purposes. 
\textbf{Please note that you are under no obligation to sign 
this declaration, but doing so would help future students.}

\begin{tabular}{@{}llll}
      &                     &            &                     \\
      &                     &            &                     \\
Signature: & \consentname & Date: & \consentdate \\
      &                     &            &                     \\
      &                     &            &                     \\
\end{tabular}
\else
\newpage
\chapter*{Education Use Consent}

Consent for educational reuse withheld. Do not distribute.

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