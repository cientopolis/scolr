rendering-review-phase
renderReportOfTagUseDuringReviewOn: html
	| included tagsInIncludedArticles |
	included := self coReview includedArticles.
	tagsInIncludedArticles := included flatCollect: [ :each | each reviewTags ] as: Bag.
	tagsInIncludedArticles notEmpty
		ifTrue: [ html
				paragraph: [ html text: 'The following tags were present in reviewed articles: '.
					self renderTagUseIn: tagsInIncludedArticles on: html ] ]