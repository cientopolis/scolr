rendering
renderImportReportOn: html
	resultSet
		ifNil: [ html paragraph: 'Import failed' ]
		ifNotNil: [ html paragraph: resultSet articles size printString , ' articles were imported'.
			html unorderedList: [ resultSet articles do: [ :each | html listItem: each printString ] ] ]