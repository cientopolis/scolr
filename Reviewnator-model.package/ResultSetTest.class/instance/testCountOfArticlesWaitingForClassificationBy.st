testing
testCountOfArticlesWaitingForClassificationBy
	| aUser article cls |
	aUser := User new.
	article := Article new.
	self assert: (aResultSet countOfArticlesWaitingForClassificationBy: aUser) equals: 0.
	aResultSet addArticle: article.
	self assert: (aResultSet countOfArticlesWaitingForClassificationBy: aUser) equals: 1.
	cls := Classification new
		author: aUser;
		yourself.
	article addClassification: cls.
	self assert: (aResultSet countOfArticlesWaitingForClassificationBy: aUser) equals: 1.
	cls includeIt.
	self assert: (aResultSet countOfArticlesWaitingForClassificationBy: aUser) equals: 0.
	cls forget.
	self assert: (aResultSet countOfArticlesWaitingForClassificationBy: aUser) equals: 1