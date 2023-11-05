testing
testHasClassificationConflict
	self deny: articleOne hasClassificationConflict.
	articleOne
		addClassification:
			(Classification new
				author: userA;
				excludeIt;
				yourself).
	self deny: articleOne hasClassificationConflict.
	articleOne
		addClassification:
			(Classification new
				author: userB;
				excludeIt;
				yourself).
	self deny: articleOne hasClassificationConflict.
	articleOne
		addClassification:
			(Classification new
				author: userA;
				undecided;
				yourself).
	self assert: articleOne hasClassificationConflict