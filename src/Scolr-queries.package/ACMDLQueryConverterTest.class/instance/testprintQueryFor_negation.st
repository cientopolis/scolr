testing
testprintQueryFor_negation

	self
		assert: (converter printQueryFor:
				 (QueryNegation element: (QueryKeyword text: 'abc')))
		equals: 'Title: (NOT abc) OR Abstract: (NOT abc)'