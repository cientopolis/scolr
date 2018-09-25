accessing
opinionToEdit: anObject
	opinionToEdit := anObject.
	tags := self stringFromTagSet: (opinionToEdit tags ifNil: [ Set new ])