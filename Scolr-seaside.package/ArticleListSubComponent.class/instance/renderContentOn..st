renderning-list
renderContentOn: html
	html div
		style: 'padding-bottom: 10px;';
		with: [ self renderOptionsOn: html ].
	self renderSelectedArticlesOn: html