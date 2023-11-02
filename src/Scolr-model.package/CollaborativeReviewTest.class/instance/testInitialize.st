testing
testInitialize
	| thisReview |
	thisReview := CollaborativeReview new.
	self assert: thisReview users isEmpty .
	self assert: thisReview classifications isEmpty.
	self assert: thisReview resultSets isEmpty.
	self assert: thisReview reviews isEmpty.
	self assert: thisReview notes isNil.
	self assert: thisReview inclusionCriteria isNil.
	self assert: thisReview exclusionCriteria isNil.
	self deny: thisReview isPromiscuous.
	self assert: thisReview title equals: 'Provide a title for your review'.
	self assert: thisReview comments isEmpty