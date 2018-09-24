testing-classifications
testClassificationForBy
	| anArticle someOne |
	anArticle := aResultSet articles any.
	someOne := User new.
	anArticle
		addClassification:
			(Classification new
				author: someOne;
				yourself);
		addClassification: Classification new.
	self assert: aCoReview classifications size equals: 2.
	self assert: (aCoReview classificationFor: anArticle by: someOne) notNil.
	self assert: (aCoReview classificationFor: anArticle by: User new) isNil.
	self assert: (aCoReview classificationFor: Article new by: someOne) isNil