testing
testParse_singleSimpleWord

	self assert: (parser parse: 'ab') text equals: 'ab'.

	self assert: (parser parse: 'a-b') text equals: 'a-b'.
	