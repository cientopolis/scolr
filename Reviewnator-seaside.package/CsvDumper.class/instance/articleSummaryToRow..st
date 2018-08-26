private
articleSummaryToRow: anArticleSummary
	^ {(anArticleSummary subject title replaceAll: $" with: $').
	anArticleSummary decision.
	anArticleSummary subject authors.
	anArticleSummary subject year.
	(anArticleSummary subject abstract replaceAll: $" with: $').
	(anArticleSummary classificationComments
		inject: String new
		into: [ :sub :each | sub , each , Character lf asString ]).
	(anArticleSummary classificationTags
		inject: ' '
		into: [ :res :tag | res , ' ' , tag ])}