private
generateSuggestedAccessCodes
	| ids usedAccessCodes |
	ids := OrderedCollection new.
	usedAccessCodes := accessCredentials collect: [ :each | each accessCode ].
	self mascotNames shuffled do: [ :mascot | self colorNames shuffled do: [ :color | ids add: color , mascot ] ].
	ids shuffled
		do: [ :each | 
			(usedAccessCodes includes: each)
				ifFalse: [ suggestedAccessCodes nextPut: each ] ]