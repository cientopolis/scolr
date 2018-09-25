rendering
renderDisplayingOn: html
	html tbsPanel beDefault
		with: [ html
				tbsPanelHeading: [ html tbsPanelTitle
						level: 3;
						with: 'Review summary' ].
			html
				tbsPanelBody: [ html
						paragraph: [ html
								strong: 'Notes: ';
								text: self coReview notes ].
					html
						paragraph: [ html
								strong: 'Inclusion criteria: ';
								text: self coReview inclusionCriteria ].
					html
						paragraph: [ html
								strong: 'Exclusion criteria: ';
								text: self coReview exclusionCriteria ].
					html
						paragraph: [ html strong: 'Contributors: '.
							self coReview contributors do: [ :user | html text: user username ] separatedBy: [ html text: ', ' ] ].
					html anchor
						callback: [ self edit ];
						with: [ html tbsButton
								beExtraSmall;
								with: 'Edit' ] ] ]