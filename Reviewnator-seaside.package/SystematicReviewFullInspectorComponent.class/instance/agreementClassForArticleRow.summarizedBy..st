styles
agreementClassForArticleRow: article summarizedBy: summary
	summary isDisagreement
		ifTrue: [ ^ 'disagree' ].
	summary isInclusion
		ifTrue: [ ^ 'in' ].
	summary isExclusion
		ifTrue: [ ^ 'out' ].
	^ 'missing'