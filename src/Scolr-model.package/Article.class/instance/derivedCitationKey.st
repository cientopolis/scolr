convert
derivedCitationKey

	| base |
	base := ((self authors ifEmpty: [ self title ]) copyWithoutAll: 'and') 
		        select: #isLetter.
	base := base copyFrom: 1 to: (base size min: 20).
	^ base , self year