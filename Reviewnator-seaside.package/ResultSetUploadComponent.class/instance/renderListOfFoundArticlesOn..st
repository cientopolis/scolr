rendering
renderListOfFoundArticlesOn: html
	html paragraph: resultSet articles size printString , ' articles were found (please, check the list before you confirm the import)'.
	html unorderedList: [ resultSet articles do: [ :each | html listItem: each printString ] ]