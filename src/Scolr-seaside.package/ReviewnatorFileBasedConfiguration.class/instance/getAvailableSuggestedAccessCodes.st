access-codes
getAvailableSuggestedAccessCodes

	"Once I run out of mascot names and color combination, I star suggesting weird numbers"

	| ids usedAccessCodes |
	ids := OrderedCollection new.
	usedAccessCodes := self usedAccessCodes.
	self mascotNames shuffled do: [ :mascot | 
		self colorNames shuffled do: [ :color | 
			(usedAccessCodes includes: color , mascot) ifFalse: [ 
				ids add: color , mascot ] ] ].
	^ ids
		  ifEmpty: [ Array with: Time millisecondClockValue ]
		  ifNotEmpty: [ ids ]