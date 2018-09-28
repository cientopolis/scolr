rendering
renderReviewActivityOn: html
	| waitingCount |
	waitingCount := self coReview countOfArticlesWaitingForClassificationBy: self currentUser.
	waitingCount > 0
		ifTrue: [ html paragraph: 'You first need to classify all articles (Phase 1.).'.
			html paragraph
				with: [ html
						text: 'There are still ';
						strong: waitingCount printString;
						text: ' waiting for your opinion.' ] ]
		ifFalse: [ html render: reviewArticlesListSubcomponent ]