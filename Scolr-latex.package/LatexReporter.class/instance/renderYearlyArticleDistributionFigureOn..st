redering
renderYearlyArticleDistributionFigureOn: stream
	| ycoords plotCoordinatesStream height |
	ycoords := (statistics includedYearlyDistribution collect: #key) sort fold: [ :a :b | a , ',' , b ] ifEmpty: [ '' ].
	height := (statistics includedYearlyDistribution size + 1) printString , 'cm'.
	plotCoordinatesStream := String new writeStream.
	plotCoordinatesStream nextPutAll: '\addplot coordinates {'.
	statistics includedYearlyDistribution
		do: [ :each | plotCoordinatesStream nextPutAll: '(' , each value printString , ',' , each key , ') ' ].
	plotCoordinatesStream
		nextPutAll: '};';
		cr.
	stream
		nextPutAll:
			'\begin{figure}
\label{fig:byYear}
\caption{Yearly distribution of included articles}
\begin{center}
\begin{tikzpicture}
    \begin{axis}[
        xbar, xmin=0,
        width=12cm, height=' , height
				,
					', enlarge y limits=0.2,
        xlabel={Number of included articles},
        symbolic y coords={' , ycoords
				,
					'},
        ytick=data,
        nodes near coords, nodes near coords align={horizontal},
    ]
        '.
	stream nextPutAll: plotCoordinatesStream contents.
	stream
		nextPutAll:
			' 
    \end{axis}
\end{tikzpicture}
\end{center}
\end{figure}'