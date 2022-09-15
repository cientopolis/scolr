testing
testIncludeItCount
	articleOne addClassification: (Classification new
		includeIt;
		yourself).
	self assert: articleOne includeItCount equals: 1. 