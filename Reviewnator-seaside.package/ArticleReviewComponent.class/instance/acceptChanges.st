callbacks
acceptChanges
	super acceptChanges.
	self isANewOpinion
		ifTrue: [ article addReview: opinionToEdit.
			self save ].
	self log: 'reviewd an article titled "' , article title , '"'