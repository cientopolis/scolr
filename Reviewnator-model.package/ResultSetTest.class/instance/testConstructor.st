testing
testConstructor
	self assert: aResultSet articles isEmpty.
	self assert: aResultSet searchString equals: ''.
	self assert: aResultSet database equals: ''.
	self assert: aResultSet comments equals: ''