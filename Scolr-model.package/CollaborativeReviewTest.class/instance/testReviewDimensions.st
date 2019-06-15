testing-reviews
testReviewDimensions
	self assert: aCoReview reviewDimensions isEmpty.
	articleOne
		addReview:
			(Review new
				comment: 'a' inDimension: 'dim1';
				yourself).
	self assert: aCoReview reviewDimensions size equals: 1.
	articleThree
		addReview:
			(Review new
				comment: 'a' inDimension: 'dim1';
				yourself).
	self assert: aCoReview reviewDimensions size equals: 1.
	articleTwo
		addReview:
			(Review new
				comment: 'a' inDimension: 'dim2';
				yourself).
	self assert: aCoReview reviewDimensions size equals: 2