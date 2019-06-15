accessing
report
	| stream |
	stream := String new writeStream.
	self renderHeaderOn: stream.
	self renderReviewGoalOn: stream.
	self renderMethodologySectionOn: stream.
	self renderProcessSummaryOn: stream.
	self renderArticleReviewsOn: stream.
	self renderAnalisysPlaceHolderOn: stream.
	self renderConclusiosPlaceHolderOn: stream.
	^ stream contents