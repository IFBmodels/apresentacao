% Classe LaTeX para aula do IFB
% Copyright (C) 2018  Daniel Saad Nogueira Nunes (daniel.nunes@ifb.edu.br)

% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation, either version 3 of the License, or
% (at your option) any later version.

% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.

% You should have received a copy of the GNU General Public License
% along with this program.  If not, see <http://www.gnu.org/licenses/>.


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{apresentacao-ifb}[2017/03/25 Classe para apresentações no IFB]
% Extenderemos a classe Beamer
\LoadClass{beamer}

\RequirePackage[utf8]{inputenc}
\RequirePackage{amsfonts,amsmath,amssymb}
\RequirePackage{color,colortbl}
\RequirePackage{enumerate}
\RequirePackage[brazil]{babel}
\RequirePackage[boxed,algoruled,linesnumbered,vlined,longend]{algorithm2e}


\SetKwFor{For}{for$($}{$)$}{}
\SetKwFor{ForAll}{for all$($}{$)$}{}
\SetKwFor{If}{if$($}{$)$}{}
\SetKwFor{ElseIf}{else if$($}{$)$}{}
\newcommand{\true}{\textbf{true}}
\newcommand{\false}{\textbf{false}}
\newcommand{\Call}[2]{\textsc{#1}(#2)}
\SetFuncSty{textsc}
\DontPrintSemicolon

%\usefonttheme{professionalfonts} % using non standard fonts for beamer
%\usefonttheme{onlymath} % default family is serif


\usefonttheme[onlymath]{serif}
\usetheme[pageofpages=de,% String used between the current page and the
% total page count.
bullet=circle,% Use circles instead of squares for bullets.
titleline=true,% Show a line below the frame title.
alternativetitlepage=true,% Use the fancy title page.
titlepagelogo=IFBVertical,% Logo for the first page.
%watermark=if-marca,% Watermark used in every page.
watermarkheight=60px,% Height of the watermark.
watermarkheightmult=10,% The watermark image is 4 times bigger
% than watermarkheight.
]{Torino}



%\setbeamertemplate{bibliography entry title}{}
%\setbeamertemplate{bibliography entry location}{}
%\setbeamertemplate{bibliography entry note}{}
\setbeamertemplate{bibliography item}{}
\setbeamertemplate{frametitle continuation}{}
\setbeamertemplate{navigation symbols}{}%remove navigation symbols
\setbeamertemplate{section in toc}[ball]
\setbeamertemplate{subsection in toc}[ball unnumbered]
\setbeamertemplate{itemize items}[ball]
\setbeamertemplate{itemize subitem}[triangle]
\setbeamertemplate{itemize subsubitem}[circle]
\setbeamertemplate{enumerate items}[ball]
\addtobeamertemplate{block begin}{}{\setlength{\parskip}{5pt}}



\setbeamercolor{section in head/foot}{fg=,bg=}

\setbeamertemplate{headline}
{%
	\setbeamercolor{headcolor}{bg=chameleongreen3,fg=white}
	\begin{beamercolorbox}{headcolor}
		\vskip2pt\insertsectionnavigationhorizontal{\textwidth}{}{}\vskip4pt
	\end{beamercolorbox}
}



\DontPrintSemicolon


\theoremstyle{definition}
\newtheorem{dfn}{Definição}
\newtheorem{teo}{Teorema}
\newtheorem*{dem}{Demonstração}
\newenvironment{demo}{\begin{dem}}{$\newline \qedsymbol$\end{dem}}
\newtheorem{cor}{Corolário}
\newtheorem{lema}{Lema}
\newtheorem{nota}{Notação}



\newenvironment{sumario}{
	\begin{frame}
		\frametitle{Sumário}
		\tableofcontents[
		sectionstyle=show/show,
		subsectionstyle=hide/shaded/hide
		]
	\end{frame}
}

\newenvironment{sumarioS}{
	\begin{frame}
		\frametitle{Sumário}
		\tableofcontents[
		sectionstyle=show/hide,
		subsectionstyle=hide/shaded/hide
		]
	\end{frame}
}


\newenvironment{sumarioSS}{
	\begin{frame}
		\frametitle{Sumário}
		\tableofcontents[
		sectionstyle=show/hide,
		subsectionstyle=show/shaded/hide
		]
	\end{frame}
}


\logo{%
	\makebox[0.95\paperwidth]{%
		\hfill%
		\includegraphics[width=0.7cm,keepaspectratio]{if-marca.jpg}%
	}%
}


\newcommand{\figura}[2][1]{
	\begin{figure}[H]
		\includegraphics[scale={#1}]{{#2}}
	\end{figure}
}

\newcommand{\figuraCaption}[3][1]{
	\begin{figure}[H]
		\includegraphics[scale={#1}]{{#2}}
		\caption{{#3}}
	\end{figure}
}



\author{Prof. Daniel Saad Nogueira Nunes}
\title{Título da Apresentação}
\subtitle{Subtítulo}
\institute{IFB -- Instituto Federal de Brasília\\ Câmpus Taguatinga}
\date{}
