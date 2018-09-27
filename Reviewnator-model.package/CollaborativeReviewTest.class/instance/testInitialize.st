testing
testInitialize
	| thisReview |
	thisReview := CollaborativeReview new.
	self assert: thisReview users isEmpty .
	self assert: thisReview classifications isEmpty.
	self assert: thisReview resultSets isEmpty.
	self assert: thisReview reviews isEmpty.
	self assert: thisReview notes equals: 'Tell something about this review. What questions does it try to answer? What is the target audience?'.
	self assert: thisReview inclusionCriteria equals: 'Inclusion sets the boundaries for the systematic review. Explain how you will select articles for inclusion.'.
	self assert: thisReview exclusionCriteria equals: 'Exclusion criteria set the boundaries for the systematic review. Explain your criteria for rejecting articles.'.
	self deny: thisReview isPromiscuous.
	self assert: thisReview title equals: 'Provide a title for your review'