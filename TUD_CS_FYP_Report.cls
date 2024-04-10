% modified version of: https://www.overleaf.com/latex/templates/ucd-cs-fyp-foundations-report/xttrhnxndwzj
\ProvidesClass{TUD_CS_FYP_Report}
\LoadClass[11pt, titlepage]{report}
\usepackage[
    paperwidth=21cm,
    paperheight=29.7cm,
    includehead,
    headheight=1.5cm,
    pdftex,
    hmargin={2cm,1.5cm},
    vmargin={0cm,2cm},
]{geometry} 
\setlength{\parindent}{0cm} 
\renewcommand{\baselinestretch}{1.2}
\parskip=1em

\renewcommand{\familydefault}{\sfdefault}
\renewcommand{\contentsname}{Table of Contents}
\renewcommand{\listfigurename}{Table of Figures}

\usepackage[T1]{fontenc}
\usepackage{float}
\usepackage{fancyhdr}
\usepackage{lastpage}
\usepackage{fancyhdr}
\usepackage{graphicx}
\usepackage{hyperref}
\usepackage[table]{xcolor}
\usepackage{booktabs}
\usepackage{minted}
\usepackage{mdframed}
\usepackage{graphicx}
\usepackage{subcaption}
\usepackage{array}

\pagestyle{fancy}
\fancypagestyle{plain}{}
\fancyhf{}
\fancyfoot[C]{Page {\thepage} of \pageref{LastPage}}

% FONT STUFF
\renewcommand{\normalsize}{\fontsize{12pt}{12pt}\selectfont}
\renewcommand{\title}[1]{\textsf{\Huge{#1}}}
\renewcommand{\author}[1]{\textsf{\Huge{#1}}}
\newcommand{\subtitle}[1]{\textsf{\textbf{\Large{#1}}}}
\newcommand{\abstractheading}[1]{\textsf{\textbf{\LARGE{#1}}}}
\newcommand{\code}[1]{\texttt{\footnotesize{#1}}}

\renewcommand{\section}{\@startsection
{section}%                  % the name
{1}%                        % the level
{0mm}%                      % the indent
{10.6mm}%                   % the beforeskip
{4.2mm}%                    % the afterskip
{\LARGE\bfseries\sffamily}} % the style

\renewcommand{\subsection}{\@startsection
{subsection}                % the name
{2}                         % the level
{0mm}                       % the indent
{6.4mm}                     % the beforeskip
{1.1mm}                     % the afterskip
{\Large\bfseries\sffamily}} % the style

\renewcommand{\subsubsection}{\@startsection
{subsubsection}                  % the name
{3}                              % the level
{0mm}                            % the indent
{4.2mm}                          % the beforeskip
{1.1mm}                          % the afterskip
{\normalsize\bfseries\sffamily}} % the style

\renewcommand\chapter{
\if@openright\cleardoublepage\else\clearpage\fi
                    \thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}

\def\@makechapterhead#1{%
  { \parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \huge\textbf{\textsf{ \thechapter. }}
    \fi
    \interlinepenalty\@M
    \huge \bfseries \textsf{#1}\par\nobreak
    \rule{5cm}{0.5pt}
    \vskip 20\p@
  } }
  
\def\@makeschapterhead#1{%
  { \parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    \huge \bfseries  \textsf{#1}\par\nobreak
    \rule{5cm}{0.5pt}
    \vskip 20\p@

  }}
  
 \renewenvironment{abstract}{%
      \chapter*{\abstractname}%
 }
 
\makeatletter
\renewcommand{\l@chapter}{\bfseries\@dottedtocline{1}{0em}{2.3em}}
\renewcommand{\l@section}{\normalfont\@dottedtocline{2}{2em}{2.3em}}
\renewcommand{\l@subsection}{\normalfont\@dottedtocline{3}{2em}{2.3em}}
\renewcommand{\l@subsubsection}{\normalfont\@dottedtocline{4}{2em}{2.3em}}
\makeatother

\def\maketitle{\begin{titlepage}
    \thispagestyle{empty}
    \let\footnotesize\small \let\footnoterule
    \relax \setcounter{page}{0}
    \null
    \vfil
    \begin{center}
        \includegraphics[height=5.8cm]{images/TUD_Logo.png}\\[1cm]
        \title{
            {\scalebox{1.2}{\textbf{\projecttitle}}}
            \\[0.5cm]
            \textsc{Final Report}
        }
        \\[1cm]
        \rule{4cm}{1pt}\\[0.7cm]
        \author{\LARGE \studentname}
        \\[0.5cm]
        \textsf{\Large\studentid}\\[0.5cm]\rule{4cm}{1pt}\\[0.5cm]
        \textsf{\Large  A  paper submitted in fulfillment of the requirements for the degree of\\[0.5cm]
        \textbf{BSc. in Computer Science}}\\[0.5cm]
        \textsf{\Large  \textbf{Supervisor:}  \supervisorname}\\[1.8cm]
        \textsf{\Large School of Computer Science\\
        Technological University Dublin\\\vfill
        \large \today}
    \end{center}
    \vfil
    \null
\end{titlepage}}
