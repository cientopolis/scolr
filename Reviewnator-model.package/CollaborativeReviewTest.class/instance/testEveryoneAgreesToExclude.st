testing-classifications
testEveryoneAgreesToExclude
	self deny: (aCoReview everyoneAgreesToExclude: articleOne).
	articleOne
		addClassification:
			(Classification new
				excludeIt;
				yourself).
	self assert: (aCoReview everyoneAgreesToExclude: articleOne).
	articleOne
		addClassification:
			(Classification new
				excludeIt;
				yourself).
	self assert: (aCoReview everyoneAgreesToExclude: articleOne).
	articleOne
		addClassification:
			(Classification new
				undecided;
				yourself).
	self deny: (aCoReview everyoneAgreesToExclude: articleOne)