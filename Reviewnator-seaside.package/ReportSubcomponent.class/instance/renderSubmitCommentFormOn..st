rendering-comments
renderSubmitCommentFormOn: html
	self preloadFormIfPossible.
	html tbsPanel beDefault
		with: [ html tbsPanelHeading: 'Submit your comments'.
			html tbsPanelBody
				with: [ html tbsForm
						with: [ html
								tbsFormGroup: [ html label
										for: 'email';
										with: 'Your email (only contributors of this review will see it)'.
									html textInput
										on: #authorEmail of: editedComment;
										tbsFormControl;
										id: 'email';
										placeholder: 'your.real.email@yourdomain.com' ].
							html
								tbsFormGroup: [ html label
										for: 'accessCode';
										with: 'One of your access codes  (only contributors of this review will see it)'.
									html textInput
										on: #offeredAccessCode of: editedComment;
										tbsFormControl;
										id: 'accessCode';
										placeholder: 'Offer the authors of this review, one of your access codes as a token of good faith' ].
							html
								tbsFormGroup: [ html label
										for: 'text';
										with: 'Text'.
									html textArea
										on: #text of: editedComment;
										tbsFormControl;
										id: 'text';
										placeholder: 'Your comment here... be constructive' ].
							html tbsButton
								beSmall;
								callback: [ self submitComment ];
								with: 'Submit' ] ] ]