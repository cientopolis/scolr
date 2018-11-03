rendering-classification-phase
renderReportOfTagUseDuringClassificationOn: html
	| included excluded tagsInIncludedArticles tagsInExcludedArticles |
	included := self coReview includedArticles.
	excluded := self coReview excludedArticles.
	tagsInIncludedArticles := included flatCollect: [ :each | each classificationTags ] as: Bag.
	tagsInExcludedArticles := excluded flatCollect: [ :each | each classificationTags ] as: Bag.
	tagsInIncludedArticles notEmpty
		ifTrue: [ html
				paragraph: [ html text: 'The following tags were present in included articles: '.
					self renderTagUseIn: tagsInIncludedArticles on: html ] ].
	tagsInExcludedArticles notEmpty
		ifTrue: [ html
				paragraph: [ html text: 'The following tags were present in excluded articles: '.
					self renderTagUseIn: tagsInExcludedArticles on: html ] ]