rendering
renderAccessCodeRequestOn: html
	html
		paragraph: [ html
				tbsForm: [ html textInput
						callback: [ :value | accessCode := value trim];
						autocomplete: 'scolr-access-code';						
						size: 40;
						placeholder: 'code to access your review'.
					html space.
					html tbsButton
						callback: [ self validateAccessCode ];
						beSmall;
						bePrimary;
						with: 'Validate!' ] ].
	html
		paragraph: [ html text: 'Without an access code, you can still ...'.
			html
				unorderedList: [ html
						listItem: [ html anchor
								callback: [ self exploreOpenReviews ];
								with: 'explore all open projects'.
							html text: ' in read-only mode, or ...' ];
						listItem: [ html anchor
								callback: [ self generateAccessCode ];
								with: 'request an access code (to start a new review project)' ] ] ].
	html
		paragraph: [ html text: 'Before using Scolr '.
			html anchor
				callback: [ self call: AcceptTermsAndConditionsComponent new ];
				with: 'read the terms of usage' ]