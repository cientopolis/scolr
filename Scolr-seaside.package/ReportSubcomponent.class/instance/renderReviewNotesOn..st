rendering
renderReviewNotesOn: html
	html heading
		level: 2;
		with: 'Review notes'.
	self renderReportOptionsOn: html.
	groupByArticle
		ifTrue: [ self renderReviewsByArticleOn: html ]
		ifFalse: [ self renderReviewsByDimensionOn: html ]