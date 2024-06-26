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
						for: 'title';
						with: 'Title for your review (less than 120 characters)'.
					html textInput
						on: #title of: self;
						tbsFormControl;
						id: 'title';
						placeholder: 'A descriptive title for your review (short - less than 120 characters)' ].
			html
				tbsFormGroup: [ html label
						for: 'notes';
						with: 'About you and your review (write at least 120 characters)'.
					html textArea
						on: #notes of: self;
						tbsFormControl;
						id: 'notes';
						placeholder: 'Tell us about you, and about the review you plan to conduct. What questions does it try to answer? What is the target audience?' ].
			html tbsButton
				callback: [ self requestAccessCode ];
				with: 'Submit'.
			html space.
			html tbsButton
				callback: [ self show: LandingComponent new ];
				with: 'Cancel' ]