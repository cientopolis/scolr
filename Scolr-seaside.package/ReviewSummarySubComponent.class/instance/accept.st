saving
accept
	self coReview notes: notes.
	self coReview inclusionCriteria: inclusionCriteria.
	self coReview exclusionCriteria: exclusionCriteria.
	self coReview title: title.
	self accessCredential cachedCoReviewTitle: title.
	isEditing := false.
	self save.