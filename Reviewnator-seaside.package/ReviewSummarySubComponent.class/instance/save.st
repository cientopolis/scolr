saving
save
	self coReview notes: notes.
	self coReview inclusionCriteria: inclusionCriteria.
	self coReview exclusionCriteria: exclusionCriteria.
	self coReview title: title.
	self parent save.
	isEditing := false