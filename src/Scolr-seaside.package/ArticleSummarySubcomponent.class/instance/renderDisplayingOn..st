rendering
renderDisplayingOn: html
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
					html strong: 'Abstract. '.
					html span
						class: 'abstract';
						with: [ html text: self article abstract ].
					html break.
					html anchor
						callback: [ isEditing := true ];
						with: [ html tbsButton
								beExtraSmall;
													style: 'margin-top: 10px;';
	
								with: 'Edit abstract' ] ] ]