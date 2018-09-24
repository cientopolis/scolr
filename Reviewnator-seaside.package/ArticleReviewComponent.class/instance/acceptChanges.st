callbacks
acceptChanges
	self isANewOpinion
		ifTrue: [ article addReview: opinionToEdit.
			self save ]