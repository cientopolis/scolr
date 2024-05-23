testing
testParse_singlePhrase

	self assert: (parser parse: '"ab cd"') text equals: 'ab cd'.

	self assert: (parser parse: '"ab cd"') class equals: QueryPhrase.

	self assert: (parser parse: '""') equals: nil