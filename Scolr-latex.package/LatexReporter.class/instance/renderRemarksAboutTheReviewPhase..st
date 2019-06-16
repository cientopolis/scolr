redering
renderRemarksAboutTheReviewPhase: stream
	| tagsString |
	tagsString := '{' , ((statistics reviewTagFrequencies collect: #key) asSortedCollection fold: [ :a :b | a , ',' , b ]) , '}'.
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
	coordinates {(10,Tag 1) (7,Tag 2) (7,Tag 3) (1,Tag 4) (5,Tag 5)
	(3,Tag 6) (10,Tag 7) (6,Tag 8) (4,Tag 9) (3,Tag very long 10)};
\end{axis}
\end{tikzpicture}
\end{center}
\end{figure}'