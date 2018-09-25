accessing
opinionToEdit: anObject
	opinionToEdit := anObject.
	opinionToEdit notNil
		ifTrue: [ tags := self stringFromTagSet: (opinionToEdit tags ifNil: [ Set new ]) ]