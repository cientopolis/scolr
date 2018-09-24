testing
testEveryoneAgreesToIncludeIt
	self deny: articleOne everyoneAgreesToIncludeIt.
	articleOne
		addClassification:
			(Classification new
				includeIt;
				yourself).
	self assert: articleOne everyoneAgreesToIncludeIt.
	articleOne
		addClassification:
			(Classification new
				includeIt;
				yourself).
	self assert: articleOne everyoneAgreesToIncludeIt.
	articleOne
		addClassification:
			(Classification new
				undecided;
				yourself).
	self deny: articleOne everyoneAgreesToIncludeIt