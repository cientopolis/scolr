rendering
renderMainContentOn: html
	self renderArticleDataOn: html.
	self renderYourReviewOn: html.
	html horizontalRule.
	html heading
		level: 2;
		with: 'All opinions'.
	(self shouldConceal: article)
		ifTrue: [ html paragraph: 'You will see all opinions once you make a decision' ]
		ifFalse: [ self renderAllOpinionsOn: html ]