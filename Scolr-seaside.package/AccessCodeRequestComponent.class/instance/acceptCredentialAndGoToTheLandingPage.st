visiting
acceptCredentialAndGoToTheLandingPage
	| newRepo |
	ReviewnatorFileBasedConfiguration singleton
		addAccessCredential: credential;
		save.
	newRepo := self repositoryClass
		storageFolderName: self configuration storageFolder
		repositoryFilename: credential accessCode.
	newRepo coReview
		title: title;
		notes: notes.
	credential cachedCoReviewTitle: title.
	newRepo save.
	self log: 'created a review titled "' , title , '"'.
	[ self notifyByEmailAbout: newRepo withCredential: credential ]
		on: NameLookupFailure
		do: [ :err | 
			Transcript
				show: err printString;
				cr ].
	self show: LandingComponent new