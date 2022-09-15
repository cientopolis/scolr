rendering
renderOpinionEditorOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Your decision' ].
			html
				tbsPanelBody: [ html
						strong: 'Recommendation:';
						break;
						break.
					self renderDecisionButtonsOn: html.
					html break.
					html
						break;
						strong: 'Comments:';
						break.
					html textArea
						columns: 80;
						rows: 6;
						on: #comments of: self ] ]