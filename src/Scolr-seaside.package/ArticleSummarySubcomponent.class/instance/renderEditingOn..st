rendering
renderEditingOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Article summary' ].
			html
				tbsPanelBody: [ html heading
						level: 4;
						with: self article title.
					html
						strong: 'Year: ';
						text: self article year.
					html break.
					html
						strong: 'Authors: ';
						text: self article authors;
						break.
					html
						tbsForm: [ html
								tbsFormGroup: [ html label
										for: 'abstract';
										with: [ html text: 'Abstract'.
											html space.
											self renderFindAbstractLinkOn: html ].
									html textArea
										id: 'abstract';
										on: #abstract of: self article;
										tbsFormControl ].
							html tbsButton
								beExtraSmall;
								callback: [ self save.
									isEditing := false ];
								with: 'Save'.
							html space.
							html tbsButton
								beExtraSmall;
								callback: [ isEditing := false ];
								with: 'Cancel' ] ] ]