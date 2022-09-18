email notification
mailMessageToNotifyAbout: someRepo withCredential: someCredential

	|  emailText |
	someCredential requestorsEmail isValidEmail ifFalse: [ ^ nil ].
	emailText := self
		             textToNotifyAboutNewReviewTitled: someRepo coReview title
		             withAccessCode: someCredential accessCode
		             for: someCredential requestorsEmail.
	^ MailMessage
		  from: ReviewnatorDeployer adminEmail
		  to: (OrderedCollection 
				   with: someCredential requestorsEmail
				   with: ReviewnatorDeployer adminEmail)
		  about: 'Access code to you Scolr open literature review'
		  asFollows: emailText