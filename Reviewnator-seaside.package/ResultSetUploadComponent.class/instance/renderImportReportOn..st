rendering
renderImportReportOn: html
	resultSet
		ifNil: [ html heading
				level: 2;
				with: 'Import failed'.
			html
				tbsForm: [ html tbsButton
						callback: [ self tryAgain ];
						with: 'Try again'.
					html space.
					html tbsButton
						callback: [ self cancel ];
						with: 'Cancel' ] ]
		ifNotNil: [ self renderListOfFoundArticlesOn: html.
			self renderListOfIgnoredArticlesOn: html.
			html
				tbsForm: [ resultSet articles notEmpty
						ifTrue: [ html tbsButton
								callback: [ self answer ];
								with: 'Import'.
							html space ].
					html tbsButton
						callback: [ self cancel ];
						with: 'Cancel' ] ]