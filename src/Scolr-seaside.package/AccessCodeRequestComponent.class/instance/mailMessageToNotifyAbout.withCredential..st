email notification
mailMessageToNotifyAbout: someRepo withCredential: someCredential

	| emailText |
	emailText := self
		             textToNotifyAboutNewReviewTitled:
		             someRepo coReview title
		             withAccessCode: someCredential accessCode
		             for: someCredential requestorsEmail.
	^ ScolrPlainTextEmail new
		  from: ReviewnatorDeployer senderForNotificationEmails ;
		  to: (Set with: someCredential requestorsEmail);
		  subject: 'Access code to you Scolr open literature review';
		  text: emailText;
		  yourself