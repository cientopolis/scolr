callback
grantAccess
	| user mainComponent coReview |
	(self credentialsAreValid and: [  ]) emailIsValid
		ifTrue: [ repository := self getRepositoryFromMemoryOrDiskWithAccessCode.
			coReview := repository coReview.
			user := coReview newOrExistingUserNamed: fullName.
			user lastLoginTimeStamp: DateAndTime now.
			self save.
			mainComponent := MainComponent
				repository: repository
				currentUser: user
				accessCredential: accessCredential.
			self show: mainComponent ]
		ifFalse:
			[ errorMessage := 'You must provide both, a valid access code and your email ' ]