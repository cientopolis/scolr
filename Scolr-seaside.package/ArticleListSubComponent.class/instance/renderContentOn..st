renderning-list
renderContentOn: html

	self renderSortingCriteriaOn: html.
	self renderFiltersOn: html.
	self renderDetailsOptionsOn: html.
	html break.
	html break.
	self renderSelectedArticlesOn: html