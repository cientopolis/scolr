redering
renderOpeningLinesOn: stream
  stream nextPutAll: '\documentclass{article}

\usepackage{graphicx}
\usepackage{tabularx}
\usepackage{pgfplots}

\begin{document}
\title{', coReview title, '}
\author{First Author \and Second Author \and Third Author}
\maketitle 

\begin{abstract}
The abstract should briefly summarize the research questions and main findings of this review in 15--250 words.

\keywords{First keyword  \and Second keyword \and Another keyword.}
\end{abstract}

'