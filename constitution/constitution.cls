\NeedsTeXFormat{LaTeX2e}[1994/06/01]

\ProvidesClass{constitution}[2009/05/15 v0.0.1 Document class for typesetting a constitution]

\LoadClass{report}

\RequirePackage[letterpaper,margin=1in]{geometry}
\RequirePackage[colorlinks,linkcolor=blue]{hyperref}
%\usepackage{hyperref}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{paralist}

\titleclass{\part}{straight}
\titleformat{\part}[display]{\filcenter\normalfont\bfseries}{PART \thepart}{0pt}{\filcenter\normalfont\bfseries}
\titlespacing*{\part}{0mm}{*4}{*2.3}[0mm]


\titleclass\article{straight}[\chapter]
\titleformat{\article}[display]{\filcenter\normalfont\bfseries}{Article \thearticle}{0pt}{\filcenter\normalfont\bfseries}
\titlespacing*{\article}{0mm}{*4}{*2.3}[0mm]
\newcounter{article}

\titleformat{\section}[runin]{\normalfont\scshape}{Section \thesection. }{0em}{}[\newline]
\titleclass\sectionstar{straight}[\section]
\newcounter{sectionstar}
\titleformat{\sectionstar}[runin]{\normalfont\scshape}{Section \refstepcounter{section}\setcounter{sectionstar}{\thesection}\thesection. }{0em}{}
\titlespacing*{\sectionstar}{0mm}{*4}{*2.3}[0mm]


%Formatting "enumeration numbers"
\renewcommand\thepart{\Alph{part}}
\renewcommand\thearticle{\Roman{article}}
\renewcommand{\thesection}{\arabic{section}} 
\renewcommand{\theenumi}{\roman{enumi}}
\renewcommand{\theenumii}{\alph{enumii}}

%code used for numbering lines
\usepackage{lineno}

\makeatletter
\def\makeLineNumberLeft{%
  \linenumberfont\llap{\hb@xt@\linenumberwidth{\LineNumber\hss}\hskip\linenumbersep}% left line number
  
%uncomment the following three lines if want line number on right side as well 
%  \hskip\columnwidth% skip over column of text
%  \rlap{\hskip\linenumbersep\hb@xt@\linenumberwidth{\hss\LineNumber}}\hss% right line number
}
\leftlinenumbers% Re-issue [left] option
\makeatother	

%used for appendices
\usepackage[toc,title]{appendix} %used for apendix

%used for figures
\usepackage{float}
\usepackage{graphicx}
\usepackage[export]{adjustbox}

%used for reducing space between items
\usepackage{enumitem}

\usepackage{eurosym}
\usepackage{amstext} % for \text
\DeclareRobustCommand{\officialeuro}{%
  \ifmmode\expandafter\text\fi
  {\fontencoding{U}\fontfamily{eurosym}\selectfont e}}
  
% for enumerated lists of (usually unnamed) paragraphs
\newlist{parenum}{enumerate}{1}
\setlist[parenum,1]{label={\textbf{\S\arabic*}}}

\newlist{paragenum}{itemize}{1}
\setlist[paragenum]{label=\paragraph{}}