rendering
renderMainContentOn: html
	html render: self reviewSummarySubComponent.
	html render: self setSelectorSubcomponent.
	self renderActivitySelectorTabsOn: html.
	html render: self articleListSubComponent