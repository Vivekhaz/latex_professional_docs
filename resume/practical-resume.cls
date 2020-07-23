\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{practical-resume}[2020/07/01 Practical Résumé Class]
\LoadClass[9pt]{article}

% Standards
\RequirePackage{xunicode}
\RequirePackage[top=.6in, bottom=.6in, left=.6in, right=.6in]{geometry}
\RequirePackage{xltxtra}
\RequirePackage{fontspec}
\RequirePackage{ifmtarg} 
\RequirePackage{csquotes}
\RequirePackage{listings}
\RequirePackage{enumitem}

% Footer
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[C]{
	\sffamily\addfontfeature{LetterSpace=20}\selectfont\MakeUppercase\foot
	}

% Name Section
\DeclareTextFontCommand{\namefont}{\sffamily\addfontfeature{LetterSpace=15}\fontsize{20}{30}\selectfont}
\newcommand*{\namehead}{
	\centering\namefont{
		\MakeUppercase\name}
	\par
	\vspace{1em}
	}

% Address Section
\DeclareTextFontCommand{\addressfont}{\centering\sffamily\addfontfeature{LetterSpace=20}\fontsize{10}{12}\selectfont}
\newenvironment*{address}[6]{
	\addressfont{\MakeUppercase{#1 \hspace{1em} #2 \hspace{1em} #3 \hspace{1em} #4 \hspace{1em} #5 \hspace{1em} #6}}
	\par
	\vspace{1.25em}
}

% Section Headings
\DeclareTextFontCommand{\headingfont}{\sffamily\bfseries\addfontfeature{LetterSpace=5}\fontsize{8}{10}\selectfont} 
\newenvironment*{sectionheading}[1]{
	\vspace{-0.75em}
	\raggedright\hrulefill\par
	\vspace{-0.25em}
	\headingfont{\textbf{\MakeUppercase{#1}}}
	\vspace{0.25em}
	\newline\par
}

% Company Name, Location, Dates
\makeatletter
	\newenvironment*{organization}[3]{
		\vspace*{-0.25em}
		\raggedright
		{\Large #1{\@ifmtarg{#2}{}{,}}} 
		#2
		\hfill {\large #3}
		\par
		\vspace{0.25em}
	}
\makeatother

% Position and responsibilites
\makeatletter
	\newenvironment*{position}[2]{
		\vspace{0em}
		{\@ifmtarg{#1}{\empty\vspace*{-0.5em}}{\itshape #1}}
		{\@ifmtarg{#2}{\empty}{#2}}
		\begin{itemize}[leftmargin=*,labelsep=1.5em,itemsep=0em,label=\raisebox{0.2em}{\tiny$\bullet$}]
		\vspace{-0.25em}
	}
	{
		\end{itemize}
		\vspace*{.5em}
	}
\makeatother
