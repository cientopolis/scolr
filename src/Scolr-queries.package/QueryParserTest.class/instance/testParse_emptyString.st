testing
testParse_emptyString

	self assert: (parser parse: '') equals: nil.


	self assert: (parser parse: ' ') equals: nil.
	