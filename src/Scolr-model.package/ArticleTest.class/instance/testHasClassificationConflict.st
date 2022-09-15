testing
testHasClassificationConflict
	self deny: articleOne hasClassificationConflict.
	articleOne
		addClassification:
			(Classification new
				excludeIt;
				yourself).
	self deny: articleOne hasClassificationConflict.
	articleOne
		addClassification:
			(Classification new
				excludeIt;
				yourself).
	self deny: articleOne hasClassificationConflict.
	articleOne
		addClassification:
			(Classification new
				undecided;
				yourself).
	self assert: articleOne hasClassificationConflict