callback
grantAccess
	| user mainComponent repository coReview |
	self credentialsAreValid
		ifTrue: [ repository := ChangeUnawareFileRepository storageFolderName: 'reviewnator-files' accessCode: accessCode.
			coReview := repository coReview.
			user := coReview newOrExistingUserNamed: fullName.
			user lastLoginTimeStamp: DateAndTime now.
			repository save.
			mainComponent := ReviewnatorMainComponent repository: repository currentUser: user.
			self show: mainComponent ]
		ifFalse: [ errorOrWarningMessage := 'You must provide both a name and an access code. The access code must be a valid one' ]