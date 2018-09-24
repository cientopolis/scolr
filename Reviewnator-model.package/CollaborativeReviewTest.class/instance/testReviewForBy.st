testing-reviews
testReviewForBy
	| anArticle someOne |
	anArticle := aResultSet articles any.
	someOne := User new.
	anArticle
		addReview:
			(Review new
				author: someOne;
				yourself);
		addReview: Review new.
	self assert: aCoReview reviews size equals: 2.
	self assert: (aCoReview reviewFor: anArticle by: someOne) notNil.
	self assert: (aCoReview reviewFor: anArticle by: User new) isNil.
	self assert: (aCoReview reviewFor: Article new by: someOne) isNil