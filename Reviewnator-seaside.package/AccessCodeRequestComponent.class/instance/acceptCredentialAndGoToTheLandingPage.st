callbacks
acceptCredentialAndGoToTheLandingPage
	| newRepo |
	ReviewnatorFileBasedConfiguration load
		addAccessCredential: credential;
		save.
	newRepo := ChangeUnawareFileRepository
		storageFolderName: self configuration storageFolder
		accessCode: credential accessCode.
	newRepo coReview
		title: title;
		notes: notes.
	newRepo save.
	self show: LandingComponent new