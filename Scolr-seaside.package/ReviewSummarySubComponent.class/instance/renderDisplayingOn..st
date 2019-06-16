rendering
renderDisplayingOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: self coReview title ].
			html
				tbsPanelBody: [ html
						paragraph: [ html
								strong: 'Notes: ';
								preformatted: self coReview notes ].
					html
						paragraph: [ html
								strong: 'Inclusion criteria: ';
								preformatted: self coReview inclusionCriteria ].
					html
						paragraph: [ html
								strong: 'Exclusion criteria: ';
								preformatted: self coReview exclusionCriteria ].
					html paragraph: [ html strong: 'Contributors: ' ].
					html
						paragraph: [ self coReview contributors
								do: [ :user | html text: user username ]
								separatedBy: [ html text: ', ' ] ].
					html anchor
						callback: [ self edit ];
						with: [ html tbsButton
								beExtraSmall;
								with: 'Edit' ] ] ]