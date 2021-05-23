rendering
renderContentOn: html
	html tbsPanel
		beDefault;
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Tags' ].
			html
				tbsPanelBody: [ html textArea
						on: #tagsString of: self;
						id: #tagsField;
						columns: 80;
						rows: 2.
					html
						break;
						small: [ self renderTagsInUseOn: html ] ] ]