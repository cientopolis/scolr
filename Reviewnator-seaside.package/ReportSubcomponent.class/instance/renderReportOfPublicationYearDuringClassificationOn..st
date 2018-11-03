rendering-classification-phase
renderReportOfPublicationYearDuringClassificationOn: html
	| included yearsOfIncludedArticles excluded yearsOfExcludedArticles |
	included := self coReview includedArticles.
	excluded := self coReview excludedArticles.
	yearsOfIncludedArticles := included collect: [ :each | each year ] as: Bag.
	yearsOfExcludedArticles := excluded collect: [ :each | each year ] as: Bag.
	yearsOfExcludedArticles notEmpty
		ifTrue: [ html
				paragraph: [ html text: 'Excluded articles were published in the following years: '.
					self renderYearFrequencyIn: yearsOfExcludedArticles on: html ] ].
	yearsOfIncludedArticles notEmpty
		ifTrue: [ html
				paragraph: [ html text: 'Included articles were published in the following years: '.
					self renderYearFrequencyIn: yearsOfIncludedArticles on: html ] ]