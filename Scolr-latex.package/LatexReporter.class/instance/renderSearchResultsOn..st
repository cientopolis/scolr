redering
renderSearchResultsOn: stream
	stream
		nextPutAll:
			'\subsection{Search results}

Table \ref{tab:searches} provides an overview of the search queries that were conducted. The source column indicates the bibliographic database used. The ``Articles'' column indicates the number of new article obtained for each source and search string combination. Searches were conducted from the first (top) to the last (bottom). Only new (non-duplicate) articles were included. The search process yielded '
				, coReview allArticles size printString , ' articles in total.'