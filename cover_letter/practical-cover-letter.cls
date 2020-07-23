\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{vivek-cover-letter}[2020/05/31 Vivek Cover Letter Class]
\LoadClass[11pt]{article}

% Standards
\RequirePackage{xunicode}
\RequirePackage[top=.6in, bottom=1in, left=.6in, right=.6in]{geometry}
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

%%%%%%%%%%%%% Head %%%%%%%%%%%%%

% Name Section
\DeclareTextFontCommand{\namefont}{\sffamily\addfontfeature{LetterSpace=15}\fontsize{20}{30}\selectfont}
\newcommand*{\namehead}{
	\centering\namefont{
		\MakeUppercase\name}
	\vspace{1em}
	\par

	}

% Address Section
\DeclareTextFontCommand{\addressfont}{\centering\sffamily\addfontfeature{LetterSpace=20}\fontsize{10}{12}\selectfont}
\newenvironment*{address}[6]{
	\addressfont{\MakeUppercase{#1 \hspace{1em} #2 \hspace{1em} #3 \hspace{1em} #4 \hspace{1em} #5 \hspace{1em} #6}}
	\vspace{.5em}
	\par
}
%%%%%%%%%%%%% Body %%%%%%%%%%%%%

%%% Employer Address %%%

% Company Name, Location, Dates
\makeatletter
	\newenvironment*{employerdate}[1]{
		\raggedright
		%Date
		{\large #1} \\
		\par
	}
\makeatother

\makeatletter
	\newenvironment*{employer}[4]{
		\raggedright
		% Contact
		{#1} \\
		% Company
		{#2} \\
		% Company Address
		{#3} \\
		% Company Address
		{#4} \\
		\par
		\vspace*{1em}
	}
\makeatother


