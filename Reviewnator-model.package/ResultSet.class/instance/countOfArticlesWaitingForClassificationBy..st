opinions-classifications
countOfArticlesWaitingForClassificationBy: anUser
	^ articles count: [ :each | each isWaitingForDecisionBy: anUser ]