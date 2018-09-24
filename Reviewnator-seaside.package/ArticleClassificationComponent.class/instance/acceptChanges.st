callbacks
acceptChanges
	self isANewOpinion
		ifTrue: [ article addClassification: opinionToEdit.
			self save ]