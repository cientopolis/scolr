rendering
renderEditingOn: html
	html heading
		level: 3;
		with: 'Review summary'.
	html
		tbsForm: [ html
				tbsFormGroup: [ html label
						for: 'notes';
						with: 'Notes'.
					html textArea
						on: #notes of: self;
						tbsFormControl;
						id: 'notes';
						placeholder: 'Use your notes to explain the purpose of this review.' ].
			html
				tbsFormGroup: [ html label
						for: 'inclusionCriteria';
						with: 'Inclusion criteteria'.
					html textArea
						on: #inclusionCriteria of: self;
						tbsFormControl;
						id: 'inclusionCriteria';
						placeholder: 'What are the criteria used to decide if an article is included?' ].
			html
				tbsFormGroup: [ html label
						for: 'exclusionCriteria';
						with: 'Exclusion criteteria'.
					html textArea
						on: #exclusionCriteria of: self;
						tbsFormControl;
						id: 'exclusionCriteria';
						placeholder: 'What are the criteria used to decide if an article is excluded?' ].
			html tbsButton
				beExtraSmall;
				callback: [ self save ];
				with: 'Save'.
			html space.
			html tbsButton
				beExtraSmall;
				callback: [ isEditing := false ];
				with: 'Cancel' ]