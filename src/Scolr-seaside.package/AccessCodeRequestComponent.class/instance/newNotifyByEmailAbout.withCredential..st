email
newNotifyByEmailAbout: someRepo withCredential: someCredential
   "WORK IN PROGRESS!!!"

	| emailText notificationEmail |
	notificationEmail := AccessCredentialNotificationEmail
		                     title: someRepo coReview title
		                     accessCode: someCredential accessCode
		                     requestorsEmail: someCredential requestorsEmail.

	someCredential requestorsEmail isValidEmail ifTrue: [ 
		email := WAEmailMessage
			         from:
			         (WAEmailAddress address: ReviewnatorDeployer adminEmail)
			         toAll: (Set
					          with:
					          (WAEmailAddress address: someCredential requestorsEmail)
					          with:
					          (WAEmailAddress address: ReviewnatorDeployer adminEmail))
			         subject: 'Access code to you Scolr open literature review'.
		email body: emailText.
		email send ]