rendering
renderReviewActivityOn: html
	| waitingCount |
	waitingCount := self coReview countOfArticlesWaitingForClassificationBy: self currentUser.
	waitingCount > 0 | (self coReview resultSets size = 0)
		ifTrue: [ html paragraph: 'You first need to classify all articles (Phase 1.).' ]
		ifFalse: [ html render: reviewArticlesListSubcomponent ]