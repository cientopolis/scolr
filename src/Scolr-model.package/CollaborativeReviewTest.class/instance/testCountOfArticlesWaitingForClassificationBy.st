testing-classifications
testCountOfArticlesWaitingForClassificationBy
	| user |
	user := User new.
	self assert: (aCoReview countOfArticlesWaitingForClassificationBy: user) equals: 3.
	articleOne
		addClassification:
			(Classification new
				author: user;
				excludeIt;
				yourself).
	self assert: (aCoReview countOfArticlesWaitingForClassificationBy: user) equals: 2