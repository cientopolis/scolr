testing
assertReviewIsOkFrom: storageFromExistingFile
	self
		assert: storageFromExistingFile coReview title
		equals: 'This is the title'.
	self
		assert: storageFromExistingFile coReview notes
		equals: 'These are the notes'.
	self
		assert: storageFromExistingFile coReview inclusionCriteria
		equals: 'This is the inclusion criteria'.
	self
		assert: storageFromExistingFile coReview exclusionCriteria
		equals: 'This is the exclusion criteria'.
	self
		assert: storageFromExistingFile coReview resultSets size
		equals: 2