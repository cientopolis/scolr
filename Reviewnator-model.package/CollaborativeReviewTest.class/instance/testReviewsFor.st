testing-reviews
testReviewsFor
	self assert: (aCoReview reviewsFor: articleOne) isEmpty.
	articleOne addReview: Classification new.
	self assert: (aCoReview reviewsFor: articleOne) size equals: 1