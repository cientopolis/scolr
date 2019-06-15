styles
agreementClassForArticleRow: article
	(article isWaitingForDecisionBy: self currentUser)
		ifTrue: [ ^ 'missing' ].
	article hasClassificationConflict
		ifTrue: [ ^ 'disagree' ].
	article everyoneAgreesToIncludeIt
		ifTrue: [ ^ 'in' ].
	article everyoneAgreesToExcludeIt
		ifTrue: [ ^ 'out' ].