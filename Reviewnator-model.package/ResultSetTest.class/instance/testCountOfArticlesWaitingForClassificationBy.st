testing
testCountOfArticlesWaitingForClassificationBy
	| aUser article |
	aUser := User new.
	article := Article new.
	self assert: (aResultSet countOfArticlesWaitingForClassificationBy: aUser) equals: 0.
	aResultSet addArticle: article.
	self assert: (aResultSet countOfArticlesWaitingForClassificationBy: aUser) equals: 1.
	article
		addClassification:
			(Classification new
				author: aUser;
				yourself).
	self assert: (aResultSet countOfArticlesWaitingForClassificationBy: aUser) equals: 0