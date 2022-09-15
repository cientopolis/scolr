accessing
countOfArticlesWaitingForClassificationBy: anUser
	^ resultSets
		inject: 0
		into: [ :sub :set | (set countOfArticlesWaitingForClassificationBy: anUser) + sub ]