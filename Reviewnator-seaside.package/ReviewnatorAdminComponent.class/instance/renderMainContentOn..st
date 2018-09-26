rendering
renderMainContentOn: html
	self renderAccessCodesOn: html.
	html tbsForm
		with: [ html
				tbsFormGroup: [ html label
						for: 'activeAccessCodes';
						with: 'Active access codes'.
					html textArea
						on: #activeAccessCodes of: self;
						tbsFormControl;
						id: 'activeAccessCodes';
						placeholder: 'Access codes (space separated)' ].
			html
				tbsFormGroup: [ html label
						for: 'adminAccessCode';
						with: 'Admin access code'.
					html textInput
						on: #adminAccessCode of: configuration;
						tbsFormControl;
						id: 'adminAccessCode';
						placeholder: 'AAdmin code' ].
			html
				tbsFormGroup: [ html label
						for: 'storageFolder';
						with: 'Storage folder'.
					html textInput
						on: #storageFolder of: configuration;
						tbsFormControl;
						id: 'storageFolder';
						placeholder: 'a folder name, no path needed' ].
			html tbsButton
				callback: [ self save ];
				with: 'Submit'.
			html space.
			html tbsButton
				callback: [ self answer ];
				with: 'Cancel' ]