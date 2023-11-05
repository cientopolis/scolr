callbacks
acceptChanges

	super acceptChanges.
	self isANewOpinion ifTrue: [ 
		article addReview: opinionToEdit.
		isNewOpinion := false ].
	self log: 'reviewd an article titled "' , article title , '"'.
	self save