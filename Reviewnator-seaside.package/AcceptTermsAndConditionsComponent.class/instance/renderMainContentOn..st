rendering
renderMainContentOn: html
	html
		heading: 'Terms and conditions';
		paragraph: 'These are the terms and conditions'.
	email
		ifNotNil: [ html tbsForm
				with: [ html tbsButton
						callback: [ self configuration userAcceptedTermsAndConditions: email.
							self configuration save.
							self answer: true ];
						with: 'Accept'.
					html space.
					html tbsButton
						callback: [ self answer: false ];
						with: 'Reject' ] ]