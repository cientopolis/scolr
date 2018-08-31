callback
grantAccess
	| user mainComponent coReview |
	self credentialsAreValid
		ifTrue: [ repository := self getRepositoryFromMemoryOrDiskWithAccessCode.
			coReview := repository coReview.
			user := coReview newOrExistingUserNamed: fullName.
			user lastLoginTimeStamp: DateAndTime now.
			self save.
			mainComponent := ReviewnatorMainComponent
				repository: repository
				currentUser: user.
			self show: mainComponent ]
		ifFalse:
			[ errorMessage := 'You must provide both a name and an access code. The access code must be a valid one' ]