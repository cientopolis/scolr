initialize-release
repository: aRepository currentUser: aUser accessCredential: credential
	super repository: aRepository currentUser: aUser accessCredential: credential.
	selectedResulSets := Set withAll: self coReview resultSets