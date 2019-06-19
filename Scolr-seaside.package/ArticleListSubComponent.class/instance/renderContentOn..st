renderning-list
renderContentOn: html
	self renderOptionsOn: html.
	html break.
	html break.
	self renderSelectedArticlesOn: html