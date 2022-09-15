accessing
comment: aString inDimension: dimensionName
	aString
		ifNotNil: [ aString notEmpty
				ifTrue: [ dimensionSpecificComments at: dimensionName put: aString ]
				ifFalse: [ dimensionSpecificComments removeKey: dimensionName ifAbsent: [  ] ] ]