testing
testprintQueryFor_disjuction

	self
		assert: (converter printQueryFor: (QueryDisjunction
					  leftTerm: (QueryKeyword text: 'abc')
					  rightTerm: (QueryKeyword text: 'def')))
		equals: 'Title: (abc OR def) OR Abstract: (abc OR def)'