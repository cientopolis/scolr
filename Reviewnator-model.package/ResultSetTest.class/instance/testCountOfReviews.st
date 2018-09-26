testing
testCountOfReviews
	self assert: aResultSet countOfReviews equals: 0.
	aResultSet addArticle: (Article new addReview: Review new).
	self assert: aResultSet countOfReviews equals: 1