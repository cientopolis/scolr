rendering
renderMainContentOn: html
	html render: self reviewSummarySubComponent.
	html render: self setSelectorSubcomponent.
	html render: self articleListSubComponent