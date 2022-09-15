rendering
renderMainContentOn: html
	html
		paragraph: [ html
				strong: 'Keep in mind: ';
				text:
					'A review dimension represents an aspect of analisys that you expect to find in all articles. Only add a new one if you are certain you will have something to capture in all (or most) articles.' ].
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