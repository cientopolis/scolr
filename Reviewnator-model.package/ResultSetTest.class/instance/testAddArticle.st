testing
testAddArticle
	| someArticle |
	someArticle := Article
		title: 'aTitleString'
		authors: 'authorsString'
		year: 'yearString'
		abstract: 'abstractString'
		documentType: 'documentTypeString'.
	aResultSet addArticle: someArticle.
	self assert: aResultSet articles size equals: 1.
	aResultSet addArticle: someArticle.
	self assert: aResultSet articles size equals: 1