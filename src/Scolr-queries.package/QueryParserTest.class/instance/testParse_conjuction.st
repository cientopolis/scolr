testing
testParse_conjuction

	| result |
	result := parser parse: 'ab | bc'.

	self assert: result class equals: QueryDisjunction.
	self assert: result leftTerm text equals: 'ab'.
	self assert: result rightTerm text equals: 'bc'