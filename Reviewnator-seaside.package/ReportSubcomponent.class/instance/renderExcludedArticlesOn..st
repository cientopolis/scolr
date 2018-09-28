rendering
renderExcludedArticlesOn: html
	| articles |
	articles := self coReview allArticles reject: [ :each | each everyoneAgreesToIncludeIt ].
	html heading
		level: 3;
		with: 'Excluded articles'.
	html
		paragraph:
			'The following articles were excluded from this review. All contributors either vote to exclude them or did not reach agreement for inclusion.'.
	html unorderedList: [ articles do: [ :article | html listItem: article printString ] ]