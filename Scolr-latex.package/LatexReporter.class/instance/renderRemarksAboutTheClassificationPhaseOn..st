redering
renderRemarksAboutTheClassificationPhaseOn: stream
	| includedYears excludedYears |
	includedYears := (coReview includedArticles collect: #year) asBag.
	excludedYears := ((coReview allArticles
		copyWithoutAll: coReview includedArticles) collect: #year) asBag.
		
	stream
		nextPutAll:
			'

\subsection{Remarks about the classification phase}

During the classification phase, all articles where evaluated against the inclusion and exclusion criteria. In summary, each article was as either "to be included" or "to be exclude" by [[average-classifiers]] contributors in average. Of the original '
				, coReview allArticles size printString , ' articles, '
				, coReview includedArticles size printString
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
	style={/pgf/number format/1000 sep=},
	ylabel=Articles,
	enlargelimits=0.05,
	legend style={at={(0.5,-0.1)},
	anchor=north,legend columns=-1},
	ybar interval=0.7,
]
\addplot 
	coordinates {(2012,408184) (2011,408348)
		 (2010,414870) (2009,412156)};
\addplot 
	coordinates {(2012,388950) (2011,393007) 
		(2010,398449) (2009,395972)};
\legend{Included, Excluded}
\end{axis}
\end{tikzpicture}
\end{center}
\end{figure}'