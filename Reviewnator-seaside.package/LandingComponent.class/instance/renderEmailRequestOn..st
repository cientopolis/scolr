rendering
renderEmailRequestOn: html
	html
		paragraph: [ html
				text: 'Access code ';
				strong: accessCode;
				text: ' is valid (and active). Please, provide your email to continue to your review ...' ].
	html
		paragraph: [ html
				tbsForm: [ html
						paragraph: [ html textInput
								callback: [ :value | email := value trim ];
								id: 'input';
								size: 80;
								placeholder: 'your.real.email@yourdomain.com' ].
					html
						paragraph: [ html tbsButton
								beSmall;
								callback: [ self grantAccess ];
								bePrimary;
								with: 'Continue'.
							html space.
							html tbsButton
								beSmall;
								callback: [ accessCode := '' ];
								bePrimary;
								with: 'Cancel' ] ] ]