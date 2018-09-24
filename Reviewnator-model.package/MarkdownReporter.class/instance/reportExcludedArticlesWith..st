reporting
reportExcludedArticlesWith: aCoReview
	| articles |
	articles := aCoReview allArticles reject: [ :each | aCoReview everyoneAgreesToInclude: each ].
	stream
		crlf;
		crlf;
		nextPutAll: '# Excluded articles';
		crlf;
		crlf;
		nextPutAll:
			'The following articles were excluded from this review. All contributors either vote to exclude them or did not reach agreement for inclusion.';
		crlf;
		crlf.
	articles do: [ :article | stream nextPutAll: '* ' , article printString ]