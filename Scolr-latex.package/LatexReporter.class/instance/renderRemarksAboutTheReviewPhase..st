redering
renderRemarksAboutTheReviewPhase: stream
	| tagsString coordinatesString |
	self halt. 
	tagsString := '{' , ((statistics reviewTagFrequencies collect: #key) asSortedCollection fold: [ :a :b | a , ',' , b ] ifEmpty: [ '' ]) , '}'.
	coordinatesString := '{'
		, ((statistics reviewTagFrequencies collect: [ :each | '(' , each key , ',' , each value printString , ')' ]) fold: [ :a :b | a , ' ' , b ] ifEmpty: [ '' ]) , '}'.
	stream
		nextPutAll:
			'
\subsection{Remarks about the review phase}

Each article that passed on to the review phase (i.e., was included in the review) was reviews by ' , statistics averageReviewers printString
				,
					' in average. 

Articles were analyzed according to the following dimensions:

\begin{description}'.
	coReview reviewDimensions asSortedCollection
		do: [ :each | 
			stream
				nextPutAll: '\item[' , each , '] Please explain what this dimension is about, how it was used to analyze articles. ';
				cr ].
	stream
		nextPutAll:
			'\end{description}

Tags were used to organize articles into the taxonomies of interest for this review. 

\begin{figure}
\label{fig:byYear}
\caption{Taxonomy of articles}
\begin{center}
\begin{tikzpicture}
\begin{axis}
 [
    title = Articles per tag,
    xbar,
    y axis line style = { opacity = 0 },
    axis x line       = none,
    tickwidth         = 0pt,
    enlarge y limits  = 0.2,
    enlarge x limits  = 0.02,
    nodes near coords,
    symbolic y coords = ' , tagsString
				,
					',
  ]
\addplot 
	coordinates ',coordinatesString,';
\end{axis}
\end{tikzpicture}
\end{center}
\end{figure}'