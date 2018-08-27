callbacks
acceptChanges
	self isANewOpinion
		ifTrue: [ self coReview classifications add: opinionToEdit.
			self save ]