testing
testAddReview

	| aReviewByA anotherReviewByA aReviewByB |
	aReviewByA := Review new
		             author: userA;
		             yourself.
	articleOne addReview: aReviewByA.
	self
		assert: articleOne reviews
		equals: (OrderedCollection with: aReviewByA).
		
	anotherReviewByA := Review new
		             author: userA;
		             yourself.
	articleOne addReview: anotherReviewByA.
	self
		assert: articleOne reviews
		equals: (OrderedCollection with: anotherReviewByA).
		
	aReviewByB := Review new
		             author: userB;
		             yourself.
	articleOne addReview: aReviewByB.
	self
		assert: articleOne reviews
		equals: (OrderedCollection with: anotherReviewByA with: aReviewByB ).