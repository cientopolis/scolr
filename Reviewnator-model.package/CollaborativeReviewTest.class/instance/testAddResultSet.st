testing
testAddResultSet
	| rev |
	rev := CollaborativeReview new.
	self assert: rev resultSets isEmpty.
	rev addResultSet: aResultSet.
	self assert: rev resultSets size equals: 1