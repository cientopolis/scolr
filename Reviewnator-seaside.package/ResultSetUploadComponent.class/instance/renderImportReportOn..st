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
						callback: [ self answer ];
						with: 'Cancel' ] ]
		ifNotNil: [ html
				paragraph: resultSet articles size printString , ' articles were found'.
			html
				unorderedList: [ resultSet articles do: [ :each | html listItem: each printString ] ].
			html
				tbsForm: [ html tbsButton
						callback: [ self answer ];
						with: 'Import' ] ]