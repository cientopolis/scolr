callbacks
login

	password = Preferences singleton defaultPassword
		ifTrue: [currentUser := self coReview newOrExistingUserNamed: userName].
	password := ''.
	userName := ''.