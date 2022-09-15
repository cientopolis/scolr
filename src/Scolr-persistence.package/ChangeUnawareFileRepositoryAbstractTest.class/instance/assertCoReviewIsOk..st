testing
assertCoReviewIsOk: coReview
	self assert: coReview title equals: 'This is the title'.
	self assert: coReview notes equals: 'These are the notes'.
	self assert: coReview inclusionCriteria equals: 'This is the inclusion criteria'.
	self assert: coReview exclusionCriteria equals: 'This is the exclusion criteria'.
	self assert: coReview resultSets size equals: 2