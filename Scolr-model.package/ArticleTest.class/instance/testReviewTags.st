tests
testReviewTags
	self assert: articleOne reviewTags isEmpty.
	articleOne
		addReview:
			(Review new
				tags: (Set with: 'bTag' with: 'aTag');
				yourself).
	self assertCollection: articleOne reviewTags equals: (SortedCollection with: 'aTag' with: 'bTag').
	articleOne
		addReview:
			(Review new
				tags: (Set with: 'bTag' with: 'cTag');
				yourself).
	self assertCollection: articleOne reviewTags equals: (SortedCollection with: 'aTag' with: 'bTag' with: 'cTag').
	articleOne
		addClassification:
			(Classification new
				tags: (Set with: 'four');
				yourself).
	self assertCollection: articleOne reviewTags equals: (SortedCollection with: 'aTag' with: 'bTag' with: 'cTag')