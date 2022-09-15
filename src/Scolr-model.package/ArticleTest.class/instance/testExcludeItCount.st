testing
testExcludeItCount
	articleOne addClassification: (Classification new
		excludeIt;
		yourself).
	self assert: articleOne excludeItCount equals: 1. 