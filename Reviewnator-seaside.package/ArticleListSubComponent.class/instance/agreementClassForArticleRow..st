styles
agreementClassForArticleRow: article 
	article hasClassificationConflict  
		ifTrue: [ ^ 'disagree' ].
	article everyoneAgreesToIncludeIt 
		ifTrue: [ ^ 'in' ].
	article everyoneAgreesToExcludeIt 
		ifTrue: [ ^ 'out' ].
	^ 'missing'