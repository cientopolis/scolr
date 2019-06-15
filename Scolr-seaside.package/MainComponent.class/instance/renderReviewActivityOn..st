rendering
renderReviewActivityOn: html
	| waitingCount |
	waitingCount := self coReview
		countOfArticlesWaitingForClassificationBy: self currentUser.
	(waitingCount > 0 | self coReview resultSets isEmpty) & reviewAnyway not
		ifTrue: [ html paragraph: 'You should first classify all articles (there are ', waitingCount printString,' still waiting for your opinion)'.
			html paragraph
				with: [ html text: 'If you think you must, you can ty to '.
					html anchor
						callback: [ reviewAnyway := true ];
						with: 'review articles anyway' ] ]
		ifFalse: [ html render: reviewArticlesListSubcomponent ]