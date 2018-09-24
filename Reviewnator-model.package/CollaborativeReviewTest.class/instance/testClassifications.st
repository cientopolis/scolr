testing-classifications
testClassifications
	self assert: aCoReview classifications isEmpty.
	articleOne addClassification: Classification new.
	self assert: aCoReview classifications size equals: 1.
	articleThree addClassification: Classification new.
	self assert: aCoReview classifications size equals: 2