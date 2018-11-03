rendering-classification-phase
renderExcludedArticlesOn: html
	| articles |
	articles := self coReview allArticles reject: [ :each | each everyoneAgreesToIncludeIt ].
	html heading
		level: 2;
		with: 'Excluded articles'.
	self renderYearsOf: articles on: html comment: 'Excluded articles were published in the following years: '.
	self
		renderReportOfClassificationTagsIn: self coReview excludedArticles
		on: html
		comment: 'The following tags were present in excluded articles: '.
	html
		paragraph:
			'The following articles were excluded from this review. All contributors either vote to exclude them or did not reach agreement for inclusion.'.
	html unorderedList: [ articles do: [ :article | html listItem: article printString ] ]