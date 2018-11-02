accessing
usernameWithoutDomain
	^ user username isValidEmail
		ifTrue: [ (user username findTokens: $@) first ]
		ifFalse: [ user username ]