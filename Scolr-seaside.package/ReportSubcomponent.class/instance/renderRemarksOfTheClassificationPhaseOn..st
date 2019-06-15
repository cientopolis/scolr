rendering-classification-phase
renderRemarksOfTheClassificationPhaseOn: html
	| included all avgClassifications |
	html paragraph: [ html strong: 'Remarks about the classification phase' ].
	included := self coReview includedArticles.
	all := self coReview allArticles.
	avgClassifications := all ifEmpty: [ 0 ] ifNotEmpty: [ (all collect: [ :each | each classifications size ]) average round: 2 ].
	html
		paragraph:
			all size printString , ' articles were classified as either "to be included" or "to be exclude" by '
				, avgClassifications printString , ' contributors in average. Of the original ' , all size printString , ' articles, only '
				, included size printString , ' reached agreement for inclusion. These articles passed on to the review phase.'.
	self renderReportOfPublicationYearDuringClassificationOn: html.
	self renderReportOfTagUseDuringClassificationOn: html