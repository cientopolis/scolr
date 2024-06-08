access-codes
getAvailableSuggestedAccessCodes

	| ids usedAccessCodes |
	ids := OrderedCollection new.
	usedAccessCodes := accessCredentials collect: [ :each | 
		                   each accessCode ].
	self mascotNames shuffled do: [ :mascot | 
		self colorNames shuffled do: [ :color | 
			(usedAccessCodes includes: color , mascot) ifFalse: [ 
				ids add: color , mascot ] ] ].
	^ ids