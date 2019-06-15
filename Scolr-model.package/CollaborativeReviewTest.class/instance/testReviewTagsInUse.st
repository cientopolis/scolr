testing-classifications
testReviewTagsInUse
	self assert: aCoReview reviewTagsInUse isEmpty.
	articleOne
		addClassification:
			(Classification new
				tags: (Set with: 'a');
				yourself).
	self assert: aCoReview reviewTagsInUse isEmpty.
	articleOne
		addReview:
			(Review new
				tags: (Set with: 'a' with: 'b');
				yourself).
	self assertCollection: aCoReview reviewTagsInUse equals: (SortedCollection with: 'a' with: 'b').
	articleThree
		addReview:
			(Review new
				tags: (Set with: 'a' with: 'c');
				yourself).
	self assertCollection: aCoReview reviewTagsInUse equals: (SortedCollection with: 'a' with: 'b' with: 'c')