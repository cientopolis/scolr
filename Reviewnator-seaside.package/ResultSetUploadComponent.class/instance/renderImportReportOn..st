rendering
renderImportReportOn: html
	resultSet
		ifNil: [ html paragraph: 'Import failed' ]
		ifNotNil: [ html paragraph: resultSet articles size printString , ' articles were imported'.
			html unorderedList: [ resultSet articles do: [ :each | html listItem: each printString ] ] ].
	importReport importErrors
		ifNotEmpty: [ html paragraph: 'Import had some problems'.
			html unorderedList: [ importReport importErrors do: [ :err | html listItem: err ] ] ].
	html form
		with: [ html submitButton
				callback: [ self answer ];
				with: 'OK' ]