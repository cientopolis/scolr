redering
renderHorizontalHistogramFor: frecuencies label: aLabel legend: aLegend caption: aCaption on: stream
	| ycoords plotCoordinatesStream height |
	frecuencies ifEmpty: [ ^ self ].
	ycoords := (frecuencies collect: #key) sort fold: [ :a :b | a , ',' , b ] ifEmpty: [ '' ].
	height := (frecuencies size max: 4) printString , 'cm'.
	plotCoordinatesStream := String new writeStream.
	plotCoordinatesStream nextPutAll: '\addplot coordinates {'.
	frecuencies do: [ :each | plotCoordinatesStream nextPutAll: '(' , each value printString , ',' , each key , ') ' ].
	plotCoordinatesStream
		nextPutAll: '};';
		cr.
	stream
		nextPutAll:
			'\begin{figure}
\label{',aLabel, '}
\caption{' , aCaption
				,
					'}
\begin{center}
\begin{tikzpicture}
    \begin{axis}[
        xbar, xmin=0,
        width=12cm, height=' , height
				,
					', 
        xlabel={' , aLegend
				,
					'},
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