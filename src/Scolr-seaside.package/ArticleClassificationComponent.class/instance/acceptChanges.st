callbacks
acceptChanges

	super acceptChanges.
	opinionToEdit comments: self comments.
	self isANewOpinion ifTrue: [ 
		article addClassification: opinionToEdit.
		isNewOpinion := false ].
	self save