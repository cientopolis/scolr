rendering
renderMainContentOn: html
	html render: reviewSummarySubComponent.
	self renderArticleDataOn: html.
	html
		tbsForm: [ html render: tagAssignmentEditorSubcomponent.
			self renderOpinionEditorOn: html.
			self renderAcceptCancelButtonsOn: html ].
	html horizontalRule.
	html heading
		level: 2;
		with: 'All opinions'.
	(self shouldConceal: article)
		ifTrue:
			[ html paragraph: 'You will see all opinions once you make a decision' ]
		ifFalse: [ self renderAllOpinionsOn: html ]