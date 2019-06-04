rendering
addNewReviewDimension
	|  value |
	value := self call: NewDimensionComponent new.
	(value notNil and: [ value notEmpty ])
		ifTrue: [ opinionToEdit  comment: 'provide some text for this dimension (or leave it empty if you think we do not need this dimension anymore)' inDimension: value ]