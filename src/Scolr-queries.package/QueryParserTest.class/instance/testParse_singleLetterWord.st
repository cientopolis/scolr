testing
testParse_singleLetterWord

	self assert: (parser parse: 'a') text equals: 'a'.

	