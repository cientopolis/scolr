rendering-review-phase
renderReportOfPublicationYearDuringReviewOn: html
	| included yearsOfIncludedArticles |
	included := self coReview includedArticles.
	yearsOfIncludedArticles := included collect: [ :each | each year ] as: Bag.
	yearsOfIncludedArticles notEmpty
		ifTrue: [ html
				paragraph: [ html text: 'Reviewed articles were published in the following years: '.
					self renderYearFrequencyIn: yearsOfIncludedArticles on: html ] ]