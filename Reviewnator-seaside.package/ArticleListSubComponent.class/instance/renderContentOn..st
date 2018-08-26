renderning
renderContentOn: html
	html heading
		level: 2;
		with: 'Articles in selected sets'.
	self renderSortingCriteriaOn: html.
	html break.
	self renderFiltersOn: html.
	html break.
	self renderDetailsOptionsOn: html.
	html break.
	html break.
	self renderSelectedArticlesOn: html