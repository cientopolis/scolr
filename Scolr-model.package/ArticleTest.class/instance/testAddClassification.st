testing
testAddClassification
	| classification |
	classification := Classification new.
	articleOne addClassification: classification.
	self assert: articleOne classifications size equals: 1.
	self assert: articleOne classifications first equals: classification