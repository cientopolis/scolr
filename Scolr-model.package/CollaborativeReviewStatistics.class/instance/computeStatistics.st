accessing
computeStatistics
	| included excluded |
	included := coReview includedArticles.
	excluded := coReview allArticles copyWithoutAll: included.
	articleCount := coReview allArticles size.
	includedArticleCount := included size.
	excludedArticleCount := excluded size.
	ignoredAsDuplicateCount := coReview resultSets
		inject: 0
		into: [ :sub :each | each duplicateCount + sub ].
	includedYearlyDistribution := (included collect: #year) asBag
		sortedElements.
	excludedYearlyDistribution := (excluded collect: #year) asBag
		sortedElements.
	averageClassifiers := (coReview allArticles
		collect: [ :each | each classifications size ]) average.
	averageReviewers := (coReview includedArticles
		collect: [ :each | each reviews size ]) average