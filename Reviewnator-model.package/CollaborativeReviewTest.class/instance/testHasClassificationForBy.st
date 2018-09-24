testing-classifications
testHasClassificationForBy
	| someOne |
	someOne := User new.
	self deny: (aCoReview hasClassificationFor: articleOne by: someOne).
	articleOne
		addClassification:
			(Classification new
				author: someOne;
				yourself).
	self assert: (aCoReview hasClassificationFor: articleOne by: someOne).
