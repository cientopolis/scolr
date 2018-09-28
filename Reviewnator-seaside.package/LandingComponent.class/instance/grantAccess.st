callbacks
grantAccess
	| user mainComponent coReview |
	email isValidEmail
		ifTrue: [ repository := self repositoryClass fromMemoryORStorageFolderName: self configuration storageFolder accessCode: accessCredential accessCode.
			coReview := repository coReview.
			user := coReview newOrExistingUserNamed: email.
			user lastLoginTimeStamp: DateAndTime now.
			self save.
			mainComponent := MainComponent repository: repository currentUser: user accessCredential: accessCredential.
			self show: mainComponent ]
		ifFalse: [ email := ''.
			accessCode := ''.
			errorMessage := 'You must provide both, a valid access code and your email ' ]