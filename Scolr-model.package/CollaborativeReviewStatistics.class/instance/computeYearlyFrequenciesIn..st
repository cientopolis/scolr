initialization
computeYearlyFrequenciesIn: aCollectionOfArticles
	| allYears distribution firstYear lastYear allYearsAsNumbers missingYears |
	allYears := (aCollectionOfArticles collect: #year) asBag.
	allYearsAsNumbers := allYears asSet
		collect: [ :each | 
			[ each asNumber ]
				on: Error
				do: [ 0 ] ].
	allYearsAsNumbers remove: 0 ifAbsent: [  ].
	missingYears := (allYearsAsNumbers min to: allYearsAsNumbers max) asSet copyWithoutAll: allYearsAsNumbers.
	distribution := allYears sortedElements asOrderedCollection.
	missingYears do: [ :each | distribution add: each printString -> 0 ].
	^ distribution sort