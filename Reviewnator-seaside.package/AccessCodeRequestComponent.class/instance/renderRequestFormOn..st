rendering
renderRequestFormOn: html
	html tbsForm
		with: [ html
				tbsFormGroup: [ html label
						for: 'email';
						with: 'Your email'.
					html textInput
						on: #email of: self;
						tbsFormControl;
						id: 'email';
						placeholder: 'your.real.email@yourdomain.com' ].
			html
				tbsFormGroup: [ html label
						for: 'notes';
						with: 'About you and your review'.
					html textArea 
						on: #notes of: self;
						tbsFormControl;
						id: 'notes';
						placeholder: 'Tell us about you, and about the review you plan to conduct.' ].
			html tbsButton
				callback: [ self requestAccessCode ];
				with: 'Submit'.
			html space.
			html tbsButton
				callback: [ self show: LandingComponent new ];
				with: 'Cancel' ]