initialize-release
repository: aRepository currentUser: aUser
	repository := aRepository.
	selectedResulSets := Set withAll: self coReview resultSets.
	currentUser := aUser