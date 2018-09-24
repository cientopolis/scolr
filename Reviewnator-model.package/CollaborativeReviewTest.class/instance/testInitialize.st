testing
testInitialize
	| thisReview |
	thisReview := CollaborativeReview new.
	self assert: thisReview users isEmpty .
	self assert: thisReview classifications isEmpty.
	self assert: thisReview resultSets isEmpty.
	self assert: thisReview reviews isEmpty.
	self assert: thisReview notes equals: ''.
	self deny: thisReview isPromiscuous