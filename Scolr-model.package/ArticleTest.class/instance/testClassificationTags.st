tests
testClassificationTags
	self assert: articleOne classificationTags isEmpty.
	articleOne
		addClassification:
			(Classification new
				tags: (Set with: 'bTag' with: 'aTag');
				yourself).
	self assertCollection: articleOne classificationTags equals: (SortedCollection  with: 'aTag' with: 'bTag').
	articleOne
		addClassification:
			(Classification new
				tags: (Set with: 'aTag' with: 'cTag');
				yourself).
	self assertCollection: articleOne classificationTags equals: (SortedCollection  with: 'aTag' with: 'bTag' with: 'cTag').
	articleOne
		addReview:
			(Review new
				tags: (Set with: 'four');
				yourself).
	self assertCollection: articleOne classificationTags equals: (SortedCollection  with: 'aTag' with: 'bTag' with: 'cTag').