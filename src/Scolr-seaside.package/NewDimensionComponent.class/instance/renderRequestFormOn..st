rendering
renderRequestFormOn: html
	html tbsForm
		with: [ html
				tbsFormGroup: [ html label
						for: 'dimension';
						with: 'New dimention name'.
					html textInput
						on: #dimension of: self;
						tbsFormControl;
						id: 'dimension' ].
			html tbsButton
				callback: [ dimension ifEmpty: [ self answer: nil ] ifNotEmpty: [ self answer: dimension ] ];
				with: 'Submit'.
			html space.
			html tbsButton
				callback: [ self answer: nil ];
				with: 'Cancel' ]