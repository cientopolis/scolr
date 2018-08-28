rendering
renderListOfIgnoredArticlesOn: html
	html paragraph: importReport ignoredArticles size printString , ' articles with missing data were ignored'.
	html unorderedList: [ importReport ignoredArticles do: [ :each | html listItem: each printString ] ]