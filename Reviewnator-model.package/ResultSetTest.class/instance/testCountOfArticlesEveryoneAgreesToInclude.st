testing
testCountOfArticlesEveryoneAgreesToInclude
	self assert: aResultSet countOfArticlesEveryoneAgreesToInclude equals: 0.
	aResultSet
		addArticle:
			(Article new
				addClassification:
					(Classification new
						includeIt;
						yourself)).
	self assert: aResultSet countOfArticlesEveryoneAgreesToInclude equals: 1