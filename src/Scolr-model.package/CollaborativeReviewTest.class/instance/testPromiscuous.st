testing
testPromiscuous
	| thisReview |
	thisReview := CollaborativeReview new.
	self deny: thisReview isPromiscuous.
	thisReview isPromiscuous: true.
	self assert: thisReview isPromiscuous