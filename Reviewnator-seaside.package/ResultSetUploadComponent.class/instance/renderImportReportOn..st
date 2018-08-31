rendering-report
renderImportReportOn: html
	importer resultSet
		ifNil: [ html heading
				level: 2;
				with: 'Import failed'.
			html break.
			self reportWarningsAndErrorsFromImportReport.
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
			html break.
			self reportWarningsAndErrorsFromImportReport.
			html
				tbsForm: [ importer resultSet articles notEmpty
						ifTrue: [ html tbsButton
								callback: [ self answerWithResultSet ];
								with: 'Import'.
							html space ].
					html tbsButton
						callback: [ self cancel ];
						with: 'Cancel' ] ]