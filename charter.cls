\def\filename{charter.cls}
\def\fileversion{v. 0.1.0}
\def\filedate{junio 1, 2020}
\def\contributors{Patricio Bos}

\typeout{\filename}
\typeout{\fileversion}
\typeout{Creado por Patricio Bos}
\typeout{\filedate}
\typeout{Una clase para armar planificaciones de Trabajos finales en el curso de Gestión de Proyectos.}

\ProvidesClass{charter}
\DeclareOption*{\PassOptionsToPackage{\CurrentOption}{color}}%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}%
\ExecuteOptions{12pt}% execute default options
\ProcessOptions%
\LoadClass{article}

%----------------------------------------------------------------------------------------
%	DEFINE CUSTOM PLAN INFORMATION COMMANDS
%----------------------------------------------------------------------------------------

\def\authorname{}
\def\ttitle{}
\newcommand*{\director}[1]{\def\supname{#1}}
\newcommand*{\codirector}[1]{\def\cosupname{#1}}
\newcommand*{\titulo}[1]{\def\@title{#1}\def\ttitle{#1}}
\newcommand*{\examiner}[1]{\def\examname{#1}}
\newcommand*{\posgrado}[1]{\def\degreename{#1}}
\newcommand*{\autor}[1]{\def\authorname{#1}}
\newcommand*{\addresses}[1]{\def\addressname{#1}}
\newcommand*{\university}[1]{\def\univname{#1}}
\newcommand*{\department}[1]{\def\deptname{#1}}
\newcommand*{\group}[1]{\def\groupname{#1}}
\newcommand*{\faculty}[1]{\def\facname{#1}}
\newcommand*{\subject}[1]{\def\subjectname{#1}}
\newcommand*{\keywords}[1]{\def\keywordnames{#1}}
\newcommand*{\juradoUNO}[1]{\def\jurunoname{#1}}
\newcommand*{\juradoDOS}[1]{\def\jurdosname{#1}}
\newcommand*{\juradoTRES}[1]{\def\jurtresname{#1}}
\newcommand*{\fechaINICIO}[1]{\def\fechaINICIOname{#1}}
\newcommand*{\fechaFINAL}[1]{\def\fechaFINALname{#1}}

\def\@title{Plan de proyecto}

%---------- LOAD PACKAGES ----------
\usepackage{amsmath,amsthm,amssymb}
\usepackage{color}
\usepackage[top=1in,bottom=1in,left=1in,right=1in,vcentering]{geometry}
\usepackage{float}
\usepackage{relsize} 
\usepackage{url}
\usepackage[plainpages=false,breaklinks=true,pdfpagelabels=true,pagebackref]{hyperref}
\usepackage[english, spanish]{babel}
%\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[]{graphicx}
\usepackage{lastpage}

% Adds space between caption and table
\usepackage[tableposition=top]{caption}

% Adds hyperlinks to references and ToC
\usepackage{hyperref}
\hypersetup{hidelinks,linkcolor = black} % Changes the link color to black and hides the hideous red border that usually is created

%% All page numbers positioned at the bottom of the page
\usepackage{fancyhdr}
\fancyhf{} % clear all header and footers
\pagestyle{fancy}

\lhead{\includegraphics[width=4cm]{./Figuras/logoFIUBA.png}}
\chead{}
\rhead{\normalsize \textrm{Plan de proyecto de Trabajo final \\\degreename\\ \authorname}}
\lfoot{ }
\cfoot{\normalsize Página \thepage \hspace{1px} de \pageref{LastPage}}
\rfoot{}
\setlength{\fboxrule}{4pt} \setlength{\fboxsep}{2ex}
\setlength{\headheight}{42pt}

\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}



\hypersetup{
  bookmarksnumbered = true, 
  pdftitle={\@title}, 
  pdfauthor={\@author},
  pdfpagelayout=OneColumn,
  bookmarksopen=False,
  pdfborder=0 0 0,        % make all links invisible, so the pdf looks good when printed
  pdffitwindow=true,      % window fit to page when opened
  pdfcreator={\@author},  % creator of the document
  pdfnewwindow=true,      % links in new window
  colorlinks=true,        % false: boxed links; true: colored links
  linkcolor=blue,         % color of internal links
  citecolor=blue,         % color of links to bibliography
  filecolor=magenta,      % color of file links
  urlcolor=magenta,       % color of external links
  unicode = true
}

%---------- SET HYPHENATION ---------
\hyphenpenalty=5000	% reduce hyphenation as much as possible
\tolerance=1000     % goes with the previous command

%---------- Widow/orphan protection ----------
\clubpenalty=10000    % Minimize orphans orphans(eliminate 10000)
\widowpenalty=10000   % Minimize widows
\brokenpenalty=10000  % Do not allow hyphen across pages
% Use cool footnotes
\renewcommand{\thefootnote}{\fnsymbol{footnote}}
\raggedbottom


\def\@maketitle{%
\newpage
\thispagestyle{empty}
\centering
	
	\centering \includegraphics[width=.7\textwidth]{./Figuras/logoFIUBA.png}
	
	\vspace{3cm}
	{\Huge \textbf{Título del proyecto}} \\
	\vspace{3cm}
	
	\flushleft
	{\normalsize Autor:\\}
	{\Large \authorname \\}
	\vspace{1cm}
	
	{\normalsize Director:\\}
	{\Large \supname \\}
	\vspace{2cm}
		
	{\normalsize Jurados:\\}	
	{\Large \jurunoname \\
			\jurdosname \\
			\jurtresname \par}
	             
	
    
    \vfill
    \centering
    \textit{Este trabajo fue realizado en el curso de Gestión de proyectos\\ entre \fechaINICIOname \hspace{1px} y \fechaFINALname.}
		
	
	\pagebreak
  }

%to do not put numbers in sections
\usepackage{titlesec}
\titleformat{\section}{}{}{0em}{\large\bfseries}

\usepackage{titletoc}
\titlecontents{section}
              [0em]
              {\addvspace{1pc}\bfseries}
              {}
              {}
              {\mdseries\titlerule*[.75pc]{.}\bfseries\contentspage}
    
%\renewcommand{\thesection}{}% Remove section references...
%\renewcommand{\thesubsection}{\arabic{subsection}}%... from subsections