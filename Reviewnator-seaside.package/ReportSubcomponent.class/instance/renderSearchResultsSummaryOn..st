rendering
renderSearchResultsSummaryOn: html
	| searchEngines countOrDuplicates articleCount |
	html heading
		level: 3;
		with: 'Search results'.
	searchEngines := (self coReview resultSets collect: [ :each | each database ]) asSet fold: [ :sub :each | sub , ', ' , each ].
	countOrDuplicates := self coReview resultSets inject: 0 into: [ :sub :each | sub + each duplicateCount ].
	articleCount := self coReview allArticles size.
	html paragraph: 'We conducted the following searches: '.
	html
		unorderedList: [ self coReview resultSets
				do: [ :each | 
					html
						listItem: [ html
								strong: each database , ': ';
								text: each searchString , ' -> ' , (each articles size + each duplicateCount) printString , ' articles found.' ] ] ].
	html
		paragraph:
			' We found ' , (countOrDuplicates + articleCount) printString , ' articles in total, of which ' , countOrDuplicates printString
				, ' were discarded as duplicates or incomplete, and ' , articleCount printString , ' were kept.'