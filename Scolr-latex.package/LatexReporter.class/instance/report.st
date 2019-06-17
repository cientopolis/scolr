redering
report
	| stream |
	bibtexEntries := self bibtextEntriesForIncludedArticles.
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
		renderSearchResultsTableOn: stream;
		renderRemarksAboutTheClassificationPhaseOn: stream;
		renderRemarksAboutTheReviewPhase: stream;
		renderReviewNotesOn: stream;
		renderTheBibliographyOn: stream.
	stream nextPutAll: '\end{document}
	
	'.
	self renderEmbeddedBibliographyFileOn: stream.
	^ stream contents