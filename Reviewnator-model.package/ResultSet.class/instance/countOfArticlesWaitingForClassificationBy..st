opinions-classifications
countOfArticlesWaitingForClassificationBy: anUser
	^ articles count: [ :each | each isWaitingForClassificationBy: anUser ]