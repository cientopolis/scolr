accessing
opinionToEdit: aClassification
	comments := aClassification comments ifNil: [ '' ].
	super opinionToEdit: aClassification