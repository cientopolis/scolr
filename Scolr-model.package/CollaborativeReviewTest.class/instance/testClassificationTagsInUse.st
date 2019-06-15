testing-classifications
testClassificationTagsInUse
	self assert: aCoReview classificationTagsInUse isEmpty.
	articleOne
		addReview:
			(Review new
				tags: (Set with: 'a');
				yourself).
	self assert: aCoReview classificationTagsInUse isEmpty.
	articleOne
		addClassification:
			(Classification new
				tags: (Set with: 'a' with: 'b');
				yourself).
	self assertCollection: aCoReview classificationTagsInUse equals: (SortedCollection with: 'a' with: 'b').
	articleThree
		addClassification:
			(Classification new
				tags: (Set with: 'a' with: 'c');
				yourself).
	self assertCollection: aCoReview classificationTagsInUse equals: (SortedCollection with: 'a' with: 'b' with: 'c')