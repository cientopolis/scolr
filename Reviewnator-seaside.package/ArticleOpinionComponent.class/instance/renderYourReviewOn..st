rendering
renderYourReviewOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Your review' ].
			html
				tbsPanelBody: [ html
						tbsForm: [ self renderTagsEditorOn: html.
							self renderOpinionEditorOn: html ] ] ]