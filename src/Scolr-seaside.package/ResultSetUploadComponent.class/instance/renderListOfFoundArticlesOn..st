rendering-report
renderListOfFoundArticlesOn: html
	html
		paragraph:
			importer articles size printString
				, ' articles were found (please, check the list before you confirm the import)'.
	html unorderedList: [ importer articles do: [ :each | html listItem: each printString ] ]