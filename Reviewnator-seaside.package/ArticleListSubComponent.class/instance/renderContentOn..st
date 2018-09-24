renderning-list
renderContentOn: html
	html heading
		level: 3;
		with: 'Opinions and reviews'.
	self renderSortingCriteriaOn: html.
	html break.
	self renderFiltersOn: html.
	html break.
	self renderDetailsOptionsOn: html.
	html break.
	html break.
	self renderSelectedArticlesOn: html