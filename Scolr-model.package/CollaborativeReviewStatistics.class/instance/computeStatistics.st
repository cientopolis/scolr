initialization
computeStatistics
	| included excluded |
	included := coReview includedArticles.
	excluded := coReview allArticles copyWithoutAll: included.
	articleCount := coReview allArticles size.
	includedArticleCount := included size.
	excludedArticleCount := excluded size.
	ignoredAsDuplicateCount := coReview resultSets inject: 0 into: [ :sub :each | each duplicateCount + sub ].
	totalYearlyDistribution := self computeYearlyFrequenciesIn: coReview allArticles.
	includedYearlyDistribution := self computeYearlyFrequenciesIn: included.
	excludedYearlyDistribution := self computeYearlyFrequenciesIn: excluded.
	averageClassifiers := (coReview allArticles collect: [ :each | each classifications size ])
		ifEmpty: [ 0 ]
		ifNotEmpty: [ :col | col average ].
	averageReviewers := (coReview includedArticles collect: [ :each | each reviews size ])
		ifEmpty: [ 0 ]
		ifNotEmpty: [ :col | col average ].
	classificationTagFrequencies := (coReview classifications flatCollect: [ :each | each tags ]) asBag sortedElements.
	reviewTagFrequencies := (coReview reviews flatCollect: [ :each | each tags ]) asBag sortedElements