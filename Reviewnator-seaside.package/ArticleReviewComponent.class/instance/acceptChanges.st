callbacks
acceptChanges
	self isANewOpinion
		ifTrue: [ self coReview reviews add: opinionToEdit.
			self save ]