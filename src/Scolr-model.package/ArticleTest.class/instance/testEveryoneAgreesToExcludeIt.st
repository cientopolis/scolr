testing
testEveryoneAgreesToExcludeIt
	self deny: articleOne everyoneAgreesToExcludeIt.
	articleOne
		addClassification:
			(Classification new
				excludeIt;
				yourself).
	self assert: articleOne everyoneAgreesToExcludeIt.
	articleOne
		addClassification:
			(Classification new
				excludeIt;
				yourself).
	self assert: articleOne everyoneAgreesToExcludeIt.
	articleOne
		addClassification:
			(Classification new
				undecided;
				yourself).
	self deny: articleOne everyoneAgreesToExcludeIt