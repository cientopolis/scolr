accessing
opinionToEdit: aClassification withTagAssignment: aTagAssignment
	comments := aClassification comments ifNil: [ '' ].
	super
		opinionToEdit: aClassification
		withTagAssignment: aTagAssignment