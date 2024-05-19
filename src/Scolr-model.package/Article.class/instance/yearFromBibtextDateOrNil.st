private
yearFromBibtextDateOrNil

	| date |
	bibtexEntry ifNil: [ ^ nil ].

	(date := bibtexEntry at: 'date') ifNil: [ ^ nil ].

	date := ((date select: [ :each | each isDigit | (each = $-) ]) 
		         splitOn: $-)
		        ifNotEmpty: [ :it | it first ]
		        ifEmpty: [ ^ nil ].
	date ifEmpty: [ ^ nil ].
	(date asNumber between: 1900 and: 3000)
		ifTrue: [ ^ date ]
		ifFalse: nil