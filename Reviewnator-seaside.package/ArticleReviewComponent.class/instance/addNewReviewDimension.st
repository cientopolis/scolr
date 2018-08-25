rendering
addNewReviewDimension
	| dialog value |
	dialog := WAInputDialog new.
	dialog
		label: 'Add';
		value: 'Miscelaneous'.
	self call: dialog.
	value := dialog value.
	(value notNil and: [ value notEmpty ])
		ifTrue: [ opinionToEdit  comment: '' inDimension: value ]