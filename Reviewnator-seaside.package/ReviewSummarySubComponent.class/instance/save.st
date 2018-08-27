saving
save
	self coReview notes: notes.
	self coReview inclusionCriteria: inclusionCriteria.
	self coReview exclusionCriteria: exclusionCriteria.
	self parent save.
	isEditing := false