testing-classifications
testEveryoneAgreesToInclude
	self deny: (aCoReview everyoneAgreesToInclude: articleOne).
	articleOne
		addClassification:
			(Classification new
				includeIt;
				yourself).
	self assert: (aCoReview everyoneAgreesToInclude: articleOne).
	articleOne
		addClassification:
			(Classification new
				includeIt;
				yourself).
	self assert: (aCoReview everyoneAgreesToInclude: articleOne).
	articleOne
		addClassification:
			(Classification new
				undecided;
				yourself).
	self deny: (aCoReview everyoneAgreesToInclude: articleOne)