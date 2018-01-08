\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{referat}[2014/08/16 Example LaTeX class]
 
 
 
\newcommand{\headlinecolor}{\normalcolor}
\def\referattype#1{\def\@referattype{#1}}
\def\referatnumber#1{\def\@referatnumber{#1}}

\RequirePackage{fancyhdr}
\LoadClass[twocolumn]{article}
\RequirePackage[compact]{titlesec}
\RequirePackage{xcolor}
\definecolor{slcolor}{HTML}{555555}
\usepackage[utf8]{inputenc} % for PCs

\renewcommand{\maketitle}{%
	\twocolumn[%
	\fontsize{40}{60}\fontfamily{phv}\fontseries{b}%
	\fontshape{sc}\selectfont\headlinecolor
	\@title \space\renewcommand{\maketitle}{%
		\twocolumn[%
		\fontsize{50}{60}\fontfamily{phv}\fontseries{b}%
		\fontshape{sl}\selectfont\headlinecolor
		\@title
		\medskip
		]%
	}
 \rule{4 pt}{25 pt} 
 \fontsize{20}{40}\fontfamily{phv}\fontseries{m}\selectfont\textcolor{slcolor}{\@referattype - \#\@referatnumber}
 	
 	\fontsize{15}{30}\selectfont \space NTNU Gjøvik - \@date \\
	\medskip
	\\
	\thispagestyle{empty}
	]%
}



% FANCY HEADER AND FOOTER SETTINGS
\pagestyle{fancy}
\fancyhf{}

\rhead{Referat - \@referattype - \#\@referatnumber}
\lhead{AMS}
\rfoot{Side \thepage}
\lfoot{Madhun, Fylling, Jacobsen, Klingenberg}

% SECTION STYLING
\titleformat{\section}         % Customise the \section command 
{\LARGE\sffamily\bfseries\scshape\raggedright} % Make the \section headers large (\Large),
% small capitals (\scshape) and left aligned (\raggedright)
{}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
{}                           % Can be used to insert code before the heading
[{\color{slcolor} \rule{200pt}{6pt}}] % Inserts a horizontal line after the heading

% SUBSECTION STYLING
\titlespacing{\subsection}{100pt}{25pt}{5pt}
\titleformat{\subsection}
{\fontsize{13}{15}\bfseries\sffamily\scshape\raggedright}
{}{0em}
{\thesubsection \space}
[{\color{slcolor} \rule{150pt}{2pt}}] % Inserts a horizontal line after the heading

% SUBSECTION STYLING
\titlespacing{\subsubsection}{100pt}{10pt}{5pt}
\titleformat{\subsubsection}         % Customise the \section command 
{\fontsize{11}{15}\sffamily\bfseries\scshape\raggedright} % Make the \section headers large (\Large),
% small capitals (\scshape) and left aligned (\raggedright)
{}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
{\thesubsubsection \space}                           % Can be used to insert code before the heading
[] % Inserts a horizontal line after the heading