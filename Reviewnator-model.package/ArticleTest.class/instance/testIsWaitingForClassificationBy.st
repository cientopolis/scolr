testing
testIsWaitingForClassificationBy
	self assert: (articleOne isWaitingForClassificationBy: aUser).
	articleOne
		addClassification:
			(Classification new
				author: aUser;
				yourself).
	self deny: (articleOne isWaitingForClassificationBy: aUser)