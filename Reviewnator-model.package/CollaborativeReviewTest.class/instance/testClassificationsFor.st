testing-classifications
testClassificationsFor
	self assert: (aCoReview classificationsFor: articleOne) isEmpty.
	articleOne addClassification: Classification new.
	self assert: (aCoReview classificationsFor: articleOne) size equals: 1