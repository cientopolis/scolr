rendering
renderOpinionEditorOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Your review' ].
			html
				tbsPanelBody: [ html label: 'Your notes'.
					self renderCommentsTableOn: html ] ]