accessing
renderHeaderOn: stream
	stream
		nextPutAll:
			'\documentclass[runningheads]{llncs}
\usepackage{graphicx}
\begin{document}
\title{';
		nextPutAll: coReview title;
		nextPutAll:
			'}
\author{First Author \and Second Author \and Third Author}
\maketitle
'