callbacks
articleSummaryToRow: anArticleSummary
	^ {(anArticleSummary subject title replaceAll: $" with: $').
	 anArticleSummary decision. 
	(anArticleSummary subject authors).
	(anArticleSummary subject year).
	(anArticleSummary subject sourceTitle replaceAll: $" with: $').
	(anArticleSummary subject abstract replaceAll: $" with: $').
	(anArticleSummary classificationComments inject: String new into: [ :sub :each | sub , each , Character lf asString ]).
	(self stringFromTagSet: anArticleSummary classificationTags)}