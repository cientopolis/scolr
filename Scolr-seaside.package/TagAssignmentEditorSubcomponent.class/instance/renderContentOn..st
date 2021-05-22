rendering
renderContentOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Tags' ].
			html
				tbsPanelBody: [ html textArea
						on: #tagsString of: self;
						columns: 80;
						rows: 2.
					html
						break;
						small: [ html
								strong: 'Tags in use: ';
								text: (self stringFromTagSet: self parent tagsInUse);
								break;
								text: 'Use comma to separate tags.';
								break;
								break ] ] ]