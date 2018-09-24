testing
testTagsInUse
	self assert: (aCoReview tagsFor: articleOne) isEmpty.
	articleOne
		addClassification:
			(Classification new
				tags: (Set with: 'TagA' with: 'TagB');
				yourself).
	self assert: (aCoReview tagsInUse) size equals: 2.
	articleTwo
		addReview:
			(Review new
				tags: (Set with: 'TagA');
				yourself).
	self assert: (aCoReview tagsInUse) size equals: 2.
	articleThree
		addReview:
			(Review new
				tags: (Set with: 'TagC');
				yourself).
	self assert: (aCoReview tagsInUse) size equals: 3