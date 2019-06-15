testing
testUndecidedCount
	articleOne
		addClassification:
			(Classification new
				forget;
				yourself).
	self assert: articleOne undecidedCount equals: 1