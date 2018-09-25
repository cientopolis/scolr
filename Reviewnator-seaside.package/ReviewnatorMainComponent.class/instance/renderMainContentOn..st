rendering
renderMainContentOn: html
	html render: reviewSummarySubComponent.
	self renderActivitySelectorTabsOn: html.
	html break.
	selectedActivity = #classify
		ifTrue: [ html render: setSelectorSubcomponent.
			html render: classifyArticlesListSubcomponent ]
		ifFalse: [ html render: reviewArticlesListSubcomponent ]