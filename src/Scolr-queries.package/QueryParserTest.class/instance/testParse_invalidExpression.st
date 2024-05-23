testing
testParse_invalidExpression

	self assert: (parser parse: 'ab cd') equals: nil.

	self assert: (parser parse: 'ab & & cd') equals: nil.

	self assert: (parser parse: '&') equals: nil.

	self assert: (parser parse: 'ab &') equals: nil.

	self assert: (parser parse: '( ab') equals: nil.

	self assert: (parser parse: 'ab )') equals: nil.
	
	self assert: (parser parse: '''ab cd''') equals: nil.