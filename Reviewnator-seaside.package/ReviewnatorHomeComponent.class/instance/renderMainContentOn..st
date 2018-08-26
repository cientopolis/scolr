rendering
renderMainContentOn: html
	html
		tbsJumbotron: [ html heading: 'Reviewnator'.
			html paragraph: 'Collaborative systematic literature reviews.'.
			html image url: ReviewnatorFileLibrary / #reviewnatorPng.
			html
				paragraph: [ html
						tbsForm: [ html textInput
								on: #fullName of: self;
								id: 'fullName';
								size: 40;
								placeholder: 'your name'.
							html space.
							html passwordInput
								on: #accessCode of: self;
								id: 'password';
								placeholder: 'secret access code'.
							html space.
							html tbsButton
								beSmall;
								bePrimary;
								callback: [ self grantAccess ];
								with: 'Open!' ] ] ]