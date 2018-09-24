testing
testHasClassificationAgreement
	self deny: articleOne hasClassificationAgreement.
	articleOne
		addClassification:
			(Classification new
				excludeIt;
				yourself).
	self assert: articleOne hasClassificationAgreement.
	articleOne
		addClassification:
			(Classification new
				excludeIt;
				yourself).
	self assert: articleOne hasClassificationAgreement.
	articleOne
		addClassification:
			(Classification new
				undecided;
				yourself).
	self deny: articleOne hasClassificationAgreement