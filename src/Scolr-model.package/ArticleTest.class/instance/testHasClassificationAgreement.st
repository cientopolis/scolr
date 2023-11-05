testing
testHasClassificationAgreement
	
	self deny: articleOne hasClassificationAgreement.
	articleOne
		addClassification:
			(Classification new
				author: userA;
				excludeIt;
				yourself).
	self assert: articleOne hasClassificationAgreement.
	articleOne
		addClassification:
			(Classification new
				excludeIt;
				author: userB;
				yourself).
	self assert: articleOne hasClassificationAgreement.
	articleOne
		addClassification:
			(Classification new
				author: userA;
				undecided;
				yourself).
	self deny: articleOne hasClassificationAgreement