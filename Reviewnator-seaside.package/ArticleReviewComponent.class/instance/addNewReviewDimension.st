rendering
addNewReviewDimension
	|  value |
	value := self call: NewDimensionComponent new.
	(value notNil and: [ value notEmpty ])
		ifTrue: [ opinionToEdit  comment: '' inDimension: value ]