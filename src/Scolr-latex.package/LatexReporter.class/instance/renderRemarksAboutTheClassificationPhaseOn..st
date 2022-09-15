redering
renderRemarksAboutTheClassificationPhaseOn: stream
	stream
		nextPutAll:
			'

\subsection{Remarks about the classification phase}

During the classification phase, all articles where evaluated against the inclusion and exclusion criteria. In summary, each article was as either "to be included" or "to be exclude" by '
				, statistics averageClassifiers printString
				, ' contributors in average. Of the original '
				, statistics articleCount printString , ' articles, '
				, statistics includedArticleCount printString
				,
					' reached agreement for inclusion. These articles passed on to the review phase.

Figure \ref{fig:includedByYear} offers a comparison and overview of included and excluded articles by year of publication.

'.
	self
		renderHorizontalHistogramFor: statistics includedYearlyDistribution
		label: 'fig:includedByYear'
		legend: 'Articles by year'
		caption: 'Yearly distribution of included articles'
		on: stream.
	stream
		cr;
		cr