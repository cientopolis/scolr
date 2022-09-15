testing
testCountOfArticlesEveryoneAgreesToExclude
	self assert: aResultSet countOfArticlesEveryoneAgreesToExclude equals: 0.
	aResultSet
		addArticle:
			(Article new
				addClassification:
					(Classification new
						excludeIt;
						yourself)).
	self assert: aResultSet countOfArticlesEveryoneAgreesToExclude equals: 1