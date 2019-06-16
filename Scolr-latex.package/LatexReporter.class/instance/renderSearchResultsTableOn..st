redering
renderSearchResultsTableOn: stream
	stream
		nextPutAll:
			'
			
\begin{table}[]
    \centering
    \begin{tabularx}{\textwidth}{ |l|X|c| }
        \hline
        \textbf{Source} & \textbf{Search string} & \textbf{Articles} \\
        \hline'.
	coReview resultSets
		do: [ :each | 
			stream
				nextPutAll: '\hline';
				cr.
			stream
				nextPutAll: each database;
				nextPutAll: ' & ';
				nextPutAll: each searchString;
				nextPutAll: ' & ';
				nextPutAll: each articles size printString;
				nextPutAll: '\\';
				cr ].
	stream
		nextPutAll:
			'
        \hline
    \end{tabularx}
    \caption{Search results}
    \label{tab:searches}
\end{table}'