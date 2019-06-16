redering
report
	| stream |
	stream := String new writeStream.
	self
		renderOpeningLinesOn: stream;
		renderIntroductionOn: stream;
		renderBackgroundOn: stream.
	stream
		nextPutAll:
			'\section{Analysis}
			
			'.
	self
		renderSearchResultsOverviewOn: stream;
		renderSearchResultsTableOn: stream.
	^ stream contents