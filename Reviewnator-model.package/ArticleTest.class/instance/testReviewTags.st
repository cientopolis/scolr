tests
testReviewTags
	self assert: articleOne reviewTags isEmpty.
	articleOne
		addReview:
			(Review new
				tags: (Set with: 'one' with: 'two');
				yourself).
	self assert: articleOne reviewTags size equals: 2.
	articleOne
		addReview:
			(Review new
				tags: (Set with: 'one' with: 'three');
				yourself).
	self assert: articleOne reviewTags size equals: 3.
	articleOne
		addClassification:
			(Classification new
				tags: (Set with: 'four');
				yourself).
	self assert: articleOne reviewTags size equals: 3