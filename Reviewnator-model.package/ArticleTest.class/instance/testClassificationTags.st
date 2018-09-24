tests
testClassificationTags
	self assert: articleOne classificationTags isEmpty.
	articleOne
		addClassification:
			(Classification new
				tags: (Set with: 'one' with: 'two');
				yourself).
	self assert: articleOne classificationTags size equals: 2.
	articleOne
		addClassification:
			(Classification new
				tags: (Set with: 'one' with: 'three');
				yourself).
	self assert: articleOne classificationTags size equals: 3.
	articleOne
		addReview:
			(Review new
				tags: (Set with: 'four');
				yourself).
	self assert: articleOne classificationTags size equals: 3