accessing
computeStatistics
	| included excluded includedYears excludedYears |
	included := coReview includedArticles.
	excluded := coReview allArticles copyWithoutAll: included.
	articleCount := coReview allArticles size.
	includedArticleCount := included size.
	excludedArticleCount := excluded size.
	ignoredAsDuplicateCount := coReview resultSets inject: 0 into: [ :sub :each | each duplicateCount + sub ].
	includedYears := (included collect: #year) asBag.
	includedYearlyDistribution := includedYears sortedElements.
	((includedYears min to: includedYears max) removeAll: includedYears) do: [ :each | includedYearlyDistribution add: each -> 0 ].
	includedYearlyDistribution := includedYearlyDistribution sort.
	excludedYears := (excluded collect: #year) asBag.
	excludedYearlyDistribution := excludedYears sortedElements.
	((excludedYears min to: excludedYears max) removeAll: excludedYears) do: [ :each | excludedYearlyDistribution add: each -> 0 ].
	excludedYearlyDistribution := excludedYearlyDistribution sort.
	averageClassifiers := (coReview allArticles collect: [ :each | each classifications size ])
		ifEmpty: [ 0 ]
		ifNotEmpty: [ :col | col average ].
	averageReviewers := (coReview includedArticles collect: [ :each | each reviews size ])
		ifEmpty: [ 0 ]
		ifNotEmpty: [ :col | col average ].
	classificationTagFrequencies := (coReview classifications flatCollect: [ :each | each tags ]) asBag sortedElements.
	reviewTagFrequencies := (coReview reviews flatCollect: [ :each | each tags ]) asBag sortedElements