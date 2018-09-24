testing
testResultSets
	aCoReview addResultSet: aResultSet.
	aCoReview addResultSet: anotherResultSet.
	self assert: aCoReview resultSets size equals: 2