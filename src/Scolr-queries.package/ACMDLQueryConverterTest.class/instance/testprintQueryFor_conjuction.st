testing
testprintQueryFor_conjuction

	self
		assert: (converter printQueryFor: (QueryConjunction
					  leftTerm: (QueryKeyword text: 'abc')
					  rightTerm: (QueryKeyword text: 'def')))
		equals: 'Title: (abc AND def) OR Abstract: (abc AND def)'