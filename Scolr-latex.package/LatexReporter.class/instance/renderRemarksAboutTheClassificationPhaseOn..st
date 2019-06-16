redering
renderRemarksAboutTheClassificationPhaseOn: stream
	| plotCoordinatesStream |
	plotCoordinatesStream := String new writeStream.
	plotCoordinatesStream nextPutAll: '\addplot coordinates {'.
	statistics includedYearlyDistribution
		do: [ :each | 
			plotCoordinatesStream
				nextPutAll: '(' , each key , ',' , each value printString , ') ' ].
	plotCoordinatesStream
		nextPutAll: '};';
		cr.
	plotCoordinatesStream nextPutAll: '\addplot coordinates {'.
	statistics excludedYearlyDistribution
		do: [ :each | 
			plotCoordinatesStream
				nextPutAll: '(' , each key , ',' , each value printString , ') ' ].
	plotCoordinatesStream
		nextPutAll: '};';
		cr.
	stream
		nextPutAll:
			'

\subsection{Remarks about the classification phase}

During the classification phase, all articles where evaluated against the inclusion and exclusion criteria. In summary, each article was as either "to be included" or "to be exclude" by [[average-classifiers]] contributors in average. Of the original '
				, statistics articleCount printString , ' articles, '
				, statistics  includedArticleCount printString
				,
					' reached agreement for inclusion. These articles passed on to the review phase.

Figure \ref{fig:byYear} offers a comparison and overview of included and excluded articles by year of publication.

\begin{figure}
\label{fig:byYear}
\caption{Included vs. excluded publications by year}
\begin{center}
\begin{tikzpicture}
\begin{axis}[
	x tick label 
	style={/pgf/number sep=},
	ylabel=Articles,
	enlargelimits=0.05,
	legend style={at={(0.5,-0.1)},
	anchor=north,legend columns=-1},
	ybar interval=1,
]' , plotCoordinatesStream contents
				,
					'\legend{Included, Excluded}
\end{axis}
\end{tikzpicture}
\end{center}
\end{figure}'