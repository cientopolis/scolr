callbacks
acceptChanges
	super acceptChanges.
	self isANewOpinion
		ifTrue: [ article addReview: opinionToEdit ].
	self log: 'reviewd an article titled "' , article title , '"'.
	self save