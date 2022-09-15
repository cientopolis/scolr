rendering-report
renderListOfIgnoredArticlesOn: html
	html
		paragraph:
			importer importReport ignoredArticles size printString , ' articles were ignored '
				,
					(ignorePotentialDuplicates
						ifTrue: [ '(duplicates or with missing data)' ]
						ifFalse: [ '(with missing data)' ]).
	html unorderedList: [ importer importReport ignoredArticles do: [ :each | html listItem: each printString ] ]