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
		ifNotEmpty: [ :col | col average asFloat round: 1 ].
	averageReviewers := (coReview includedArticles collect: [ :each | each reviews size ])
		ifEmpty: [ 0 ]
		ifNotEmpty: [ :col | col average asFloat round: 1 ].
	classificationTagFrequencies := (coReview classifications flatCollect: [ :each | each tags ]) asBag sortedElements.
	reviewTagFrequencies := (coReview reviews flatCollect: [ :each | each tags ]) asBag sortedElements