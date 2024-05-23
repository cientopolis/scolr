testing
testParse_rightToLeftAssociation

	| result |
	result := parser parse: 'ab | cd | ef'.

	self assert: result class equals: QueryDisjunction.
	self assert: result leftTerm text equals: 'ab'.
	self assert: result rightTerm leftTerm text equals: 'cd'.
	self assert: result rightTerm rightTerm text equals: 'ef'