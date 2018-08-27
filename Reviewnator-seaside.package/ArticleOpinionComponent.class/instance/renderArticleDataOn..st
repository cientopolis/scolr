rendering
renderArticleDataOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Article summary' ].
			html
				tbsPanelBody: [ html heading
						level: 4;
						with: article title.
					html
						strong: 'Year: ';
						text: article year , ' - Type: ' , article documentType.
					html break.
					html
						strong: 'Authors: ';
						text: article authors;
						break.
					html strong: 'Abstract. '.
					html span
						class: 'abstract';
						with: [ html text: article abstract ] ] ]