rendering
renderEditingOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Review summary' ].
			html
				tbsPanelBody: [ html
						tbsForm: [ html
								tbsFormGroup: [ html label
										for: 'title';
										with: 'Title'.
									html textInput
										on: #title of: self;
										tbsFormControl;
										id: 'title';
										placeholder: 'Provide a descriptive title.' ].
							html
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
										with: 'Inclusion criteria'.
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
								with: 'Cancel' ] ] ]