rendering
renderMainContentOn: html
	html tbsForm
		with: [ html
				tbsFormGroup: [ html label
						for: 'accessCode';
						with: 'Access code'.
					html textInput
						on: #accessCode of: self;
						tbsFormControl;
						id: 'accessCode';
						placeholder: 'some access code (memorable word, but hard to guess)' ].
			html
				tbsFormGroup: [ html label
						for: 'filename';
						with: 'Repository filename (without extension)'.
					html textInput
						on: #repositoryFilename of: self;
						tbsFormControl;
						id: 'filename';
						placeholder: 'filename' ].
					
								html
				tbsFormGroup: [ html label
						for: 'notes';
						with: 'Notes'.
					html textInput
						on: #notes of: self;
						tbsFormControl;
						id: 'notes';
						placeholder: 'notes' ].
			html
				tbsFormGroup: [ html label
						for: 'limit';
						with: 'Article limit'.
					html textInput
						on: #limit of: self;
						tbsFormControl;
						id: 'limit';
						placeholder: 'maximum number of articles allowed' ].
			html tbsButton
				callback: [ self save ];
				with: 'Submit'.
			html space.
			html tbsButton
				callback: [ self answer: nil ];
				with: 'Cancel' ]