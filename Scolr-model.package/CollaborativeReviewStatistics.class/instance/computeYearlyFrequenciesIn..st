initialization
computeYearlyFrequenciesIn: aCollectionOfArticles
	| allYears distribution |
	allYears := (aCollectionOfArticles collect: #year) asBag.
	distribution := allYears sortedElements.
	((allYears min to: allYears max) removeAll: allYears) do: [ :each | distribution add: each -> 0 ].
	^ distribution sort