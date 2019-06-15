accessing
newSuggestedAccessCode
	suggestedAccessCodes  atEnd ifTrue: [ self generateSuggestedAccessCodes ].
	^ suggestedAccessCodes next