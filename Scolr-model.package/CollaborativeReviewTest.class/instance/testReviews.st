testing-reviews
testReviews
	self assert: aCoReview reviews isEmpty.
	articleOne addReview: Review new.
	self assert: aCoReview reviews size equals: 1.
	articleThree addReview: Review new.
	self assert: aCoReview reviews size equals: 2