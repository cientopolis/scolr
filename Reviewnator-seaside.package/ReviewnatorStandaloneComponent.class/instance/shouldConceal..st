testing
shouldConceal: article
	^ self coReview isPromiscuous not & (article isWaitingForDecisionBy: self currentUser)