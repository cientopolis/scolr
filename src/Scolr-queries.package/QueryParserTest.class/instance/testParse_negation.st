testing
testParse_negation

	self assert: (parser parse: '! ab') class equals: QueryNegation.
	self assert: (parser parse: '! ab') element text  equals: 'ab'.
	self assert: (parser parse: '! ab') element class equals: QueryKeyword .

	self assert: (parser parse: '!ab') class equals: QueryNegation.
	self assert: (parser parse: '!ab') element text  equals: 'ab'.
	self assert: (parser parse: '!ab') element class equals: QueryKeyword .

	self assert: (parser parse: '! "ab cd"') class equals: QueryNegation.
	self assert: (parser parse: '! "ab cd"') element  text equals: 'ab cd'.
	self assert: (parser parse: '! "ab cd"') element class equals: QueryPhrase .

	self assert: (parser parse: '!"ab cd"') class equals: QueryNegation.
	self assert: (parser parse: '!"ab cd"') element  text equals: 'ab cd'.
	self assert: (parser parse: '!"ab cd"') element class equals: QueryPhrase .

	self assert: (parser parse: '! ') equals: nil.

	