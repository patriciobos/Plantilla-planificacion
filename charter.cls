\def\filename{charter.cls}
\def\fileversion{v. 0.1.0}
\def\filedate{junio 1, 2020}
\def\contributors{Patricio Bos}

\typeout{\filename}
\typeout{\fileversion}
\typeout{Creado por Patricio Bos para el Laboratorio de Sistemas Embebidos de FIUBA}
\typeout{\filedate}
\typeout{Una clase para armar planificaciones de Trabajos finales en el curso de Gestión de Proyectos.}

\RequirePackage{etoolbox}
\RequirePackage{xparse}

\newbool{codirector}

\ProvidesClass{charter}
\DeclareOption{codirector}{\booltrue{codirector}}
\DeclareOption*{\PassOptionsToPackage{\CurrentOption}{color}}%
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}%
\ExecuteOptions{12pt}% execute default options
\ProcessOptions%

\LoadClass[a4paper]{article}

%----------------------------------------------------------------------------------------
%	DEFINE CUSTOM PLAN INFORMATION COMMANDS 
%----------------------------------------------------------------------------------------
%TODO Uniformizar el nombre de los comandos a camelCase
\def\authorname{}
\def\ttitle{}
\newcommand*{\director}[1]{\def\supname{#1}}
\newcommand*{\pertenenciaDirector}[1]{\def\pertesupname{#1}}
\newcommand*{\codirector}[1]{\def\cosupname{#1}}
\newcommand*{\pertenenciaCoDirector}[1]{\def\pertecosupname{#1}}
\newcommand*{\cliente}[1]{\def\clientename{#1}}
\newcommand*{\empresaCliente}[1]{\def\empclientename{#1}}
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
\newcommand*{\juradoUno}[1]{\def\jurunoname{#1}}
\newcommand*{\pertenenciaJurUno}[1]{\def\perteunoame{#1}}
\newcommand*{\juradoDos}[1]{\def\jurdosname{#1}}
\newcommand*{\pertenenciaJurDos}[1]{\def\pertedosame{#1}}
\newcommand*{\juradoTres}[1]{\def\jurtresname{#1}}
\newcommand*{\pertenenciaJurTres}[1]{\def\pertetresame{#1}}
\newcommand*{\fechaINICIO}[1]{\def\fechaInicioName{#1}}
\newcommand*{\fechaFINALPlan}[1]{\def\fechaFinalPlanName{#1}}
\newcommand*{\fechaFINALTrabajo}[1]{\def\fechaFinalName{#1}} 



\def\@title{Plan de proyecto de Trabajo Final} %TODO ver si se puede agregar el campo con el nombre del autor acá

\AtBeginDocument{
  \hypersetup{
    pdftitle = {\@title},
    pdfauthor = {\authorname},
    %pdfkeywords={\keywordnames},
    %pdfsubject={\subjectname}%,
%    colorlinks,
%    linkcolor={red!50!black},
%    citecolor={blue!50!black},
%    urlcolor={blue!80!black}
  }
  	\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
	\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
	\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
}



%---------- LOAD PACKAGES ----------
\usepackage{amsmath,amsthm,amssymb}
\usepackage{color}
\usepackage[top=1in,bottom=1in,left=1in,right=1in,vcentering]{geometry}
\usepackage{float}
\usepackage{relsize} 
\usepackage{url}
%\usepackage[plainpages=false,breaklinks=true,pdfpagelabels=true,pagebackref]{hyperref}
\usepackage[english, spanish]{babel}
\usepackage[utf8]{inputenc}
\usepackage[]{graphicx}
\usepackage{lastpage}
\usepackage{pdflscape}
\usepackage{pdflscape}
\usepackage[table,xcdraw]{xcolor}
\usepackage{multirow}
\usepackage{tabularx}
\usepackage{pgfgantt} 
\usepackage{graphicx}
\usepackage[section]{placeins} % evita que los floats se pueden ubicar más allá de un \section{•}
\usepackage[labelsep=period]{caption}
\usepackage{longtable}

%\usepackage{tikz}
%\usetikzlibrary{arrows, arrows.meta, calc, positioning, quotes, shapes}
%\usepackage{array}


% Adds space between caption and table
\usepackage[tableposition=top]{caption}

% Adds hyperlinks to references and ToC
%\usepackage{hyperref}
%\hypersetup{hidelinks,linkcolor = black} % Changes the link color to black and hides the hideous red border that usually is created
\RequirePackage[
	bookmarks=true,         % show bookmarks bar?
    unicode=false,          % non-Latin characters in Acrobat’s bookmarks
    pdftoolbar=true,        % show Acrobat’s toolbar?
    pdfmenubar=true,        % show Acrobat’s menu?
    pdffitwindow=false,     % window fit to page when opened
    pdfstartview={FitH},    % fits the width of the page to the window
	colorlinks = true,
    linkcolor=black,%{red!50!black},
    citecolor={blue!50!black},
    urlcolor={blue!80!black}]{hyperref}

%% All page numbers positioned at the bottom of the page
\usepackage{fancyhdr}
\fancyhf{} % clear all header and footers
\pagestyle{fancy}

\lhead{\includegraphics[width=3.5cm]{./Figuras/logoFIUBA.pdf}}
\chead{}
\rhead{\normalsize \textrm{Plan de proyecto de Trabajo final \\\degreename\\ \authorname}}
\lfoot{ }
\cfoot{\normalsize Página \thepage \hspace{1px} de \pageref{LastPage}}
\rfoot{}
\setlength{\fboxrule}{4pt} \setlength{\fboxsep}{2ex}
\setlength{\headheight}{42pt}

\renewcommand{\headrulewidth}{0.4pt}
\renewcommand{\footrulewidth}{0.4pt}

\setlength{\parindent}{0pt}
\setlength{\parskip}{1em}

%enumerate style
\renewcommand{\labelenumii}{\theenumii}
\renewcommand{\theenumii}{\theenumi.\arabic{enumii}.}

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
%  colorlinks=true,        % false: boxed links; true: colored links
%  linkcolor=blue,         % color of internal links
%  citecolor=blue,         % color of links to bibliography
%  filecolor=magenta,      % color of file links
%  urlcolor=magenta,       % color of external links
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

% PORTADA
\def\@maketitle{%
\newpage
\thispagestyle{empty}
\centering
	
	\centering \includegraphics[width=.7\textwidth]{./Figuras/logoFIUBA.pdf}
	
	\vspace{3cm}
	{\Huge \textbf{\ttitle}} \\
	\vspace{4cm}
	
	\flushleft
	{\normalsize Autor:\\}
	{\Large \authorname \\}
	\vspace{1cm}
	
	{\normalsize Director:\\}
	{\Large \supname \hspace{1px} (\pertesupname) \\}
	%\vspace{2cm}
	\ifbool{codirector}{% If the codirector class option has been specified
	\vspace{10px}
	{\normalsize Codirector:\\}
	{\Large \cosupname  \hspace{1px} (\pertecosupname) \\}
	}{\vspace{2pc}%nothing
	}
		
	
    \vfill
    \centering
    \textit{Esta planificación fue realizada en el curso de Gestión de proyectos\\ entre el \fechaInicioName \hspace{1px} y el  \fechaFinalPlanName.}
		
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

\newenvironment{consigna}[1]{%
    \leavevmode\color{#1}\ignorespaces%
}{%
}%