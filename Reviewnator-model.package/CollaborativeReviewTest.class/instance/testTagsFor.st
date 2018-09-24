testing
testTagsFor
	self assert: (aCoReview tagsFor: articleOne) isEmpty.
	articleOne
		addClassification:
			(Classification new
				tags: (Set with: 'TagA' with: 'TagB');
				yourself).
	self assert: (aCoReview tagsFor: articleOne) size equals: 2.
	articleOne
		addReview:
			(Review new
				tags: (Set with: 'TagA');
				yourself).
	self assert: (aCoReview tagsFor: articleOne) size equals: 2.
	articleOne
		addReview:
			(Review new
				tags: (Set with: 'TagC');
				yourself).
	self assert: (aCoReview tagsFor: articleOne) size equals: 3