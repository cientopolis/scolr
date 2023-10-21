saving
accept

	self coReview title: title.
	self coReview objective: objective.
	self coReview researchQuestions: researchQuestions.
	self coReview inclusionCriteria: inclusionCriteria.
	self coReview exclusionCriteria: exclusionCriteria.
	self coReview terms: terms.
	self coReview basicSearchQuery: basicSearchQuery.
	self coReview databases: databases.
	self coReview notes: notes.
	self accessCredential cachedCoReviewTitle: title.
	isEditing := false.
	self save