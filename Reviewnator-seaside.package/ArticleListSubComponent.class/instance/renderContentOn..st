renderning
renderContentOn: html
	html heading
		level: 3;
		with: 'Articles in selected lists'.
	self renderSortingCriteriaOn: html.
	html break.
	self renderFiltersOn: html.
	html break.
	self renderDetailsOptionsOn: html.
	html break.
	html break.
	self renderSelectedArticlesOn: html