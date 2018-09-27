visiting
acceptCredentialAndGoToTheLandingPage
	| newRepo |
	ReviewnatorFileBasedConfiguration load
		addAccessCredential: credential;
		save.
	newRepo := self repositoryClass
		storageFolderName: self configuration storageFolder
		accessCode: credential accessCode.
	newRepo coReview
		title: title;
		notes: notes.
	newRepo save.
	self log: 'created a review titled "' , title , '"'.
	self show: LandingComponent new