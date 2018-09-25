renderning-list
renderContentOn: html

	self renderSortingCriteriaOn: html.
	html break.
	self renderFiltersOn: html.
	html break.
	self renderDetailsOptionsOn: html.
	html break.
	html break.
	self renderSelectedArticlesOn: html