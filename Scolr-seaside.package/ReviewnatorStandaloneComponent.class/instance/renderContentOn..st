rendering
renderContentOn: html
	self collectStats.
	self renderNavigationbarOn: html.
	html tbsContainer: [ self renderMainContentOn: html ].
	html tbsContainer: [ self renderErrorOrWarningOn: html ].
	html tbsContainer: [ self renderReleseInfoOn: html ].