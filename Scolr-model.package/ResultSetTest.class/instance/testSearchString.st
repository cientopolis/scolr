testing
testSearchString
	aResultSet searchString: 'ahghh'.
	self assert: aResultSet searchString equals: 'ahghh'