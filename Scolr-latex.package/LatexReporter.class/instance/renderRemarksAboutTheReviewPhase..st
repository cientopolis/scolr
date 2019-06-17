redering
renderRemarksAboutTheReviewPhase: stream
	stream
		nextPutAll:
			'
\subsection{Remarks about the review phase}

Each article that passed on to the review phase (i.e., was included in the review) was reviews by '
				, statistics averageReviewers printString
				,
					' in average. 

Articles were analyzed according to the following dimensions:

\begin{description}'.
	coReview reviewDimensions asSortedCollection
		do: [ :each | 
			stream
				nextPutAll:
					'\item[' , each
						,
							'] Please explain what this dimension is about, how it was used to analyze articles. ';
				cr ].
	stream
		nextPutAll:
			'\end{description}

Tags were used to organize articles into the taxonomies of interest for this review. Figire \ref{fig:tagsUsage} provides an overview of tags to articles assignment.

'.
	self
		renderHorizontalHistogramFor: statistics reviewTagFrequencies
		label: 'fig:tagsUsage'
		legend: 'Number of articles with a given tag'
		caption: 'Organization of reviewed articles with tags'
		on: stream