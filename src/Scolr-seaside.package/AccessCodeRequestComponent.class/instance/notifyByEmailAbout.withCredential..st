email
notifyByEmailAbout: someRepo withCredential: someCredential
	| emailText |
	emailText := self
		emailTextAboutNewReviewTitled: someRepo coReview title
		withAccessCode: someCredential accessCode
		for: someCredential requestorsEmail.
	someCredential requestorsEmail isValidEmail
		ifTrue: [ email := WAEmailMessage
				from: (WAEmailAddress address: ReviewnatorDeployer adminEmail)
				toAll:
					(Set
						with: (WAEmailAddress address: someCredential requestorsEmail)
						with: (WAEmailAddress address: ReviewnatorDeployer adminEmail))
				subject: 'Access code to you Scolr open literature review'.
			email body: emailText.
			email send ]