testing-reviews
testHasReviewForBy
	| someOne |
	someOne := User new.
	self deny: (aCoReview hasReviewFor: articleOne by: someOne).
	articleOne
		addReview:
			(Review new
				author: someOne;
				yourself).
	self assert: (aCoReview hasReviewFor: articleOne by: someOne)