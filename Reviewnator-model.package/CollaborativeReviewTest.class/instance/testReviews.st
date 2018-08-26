testing
testReviews
	aCoReview reviews: (Set with: 1).
	self assertCollection: aCoReview reviews equals: (Set with: 1).
