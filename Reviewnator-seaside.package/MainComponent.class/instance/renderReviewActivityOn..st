rendering
renderReviewActivityOn: html
	| waitingCount |
	waitingCount := self coReview countOfArticlesWaitingForClassificationBy: self currentUser.
	waitingCount > 0 | (self coReview resultSets size = 0)
		ifTrue: [ html
				paragraph:
					'You first need to classify all articles (Phase 1). You can only review articles that you and others classified for inclusion.' ]
		ifFalse: [ html render: reviewArticlesListSubcomponent ]