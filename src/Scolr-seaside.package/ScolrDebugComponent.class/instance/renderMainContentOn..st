rendering
renderMainContentOn: html

	html heading: 'Sessions'.
	self summarizePotentiallyActiveSessionsOn: html.
	self summarizeExpiredSessionsOn: html.
	self summarizeGptRequestLogOn: html.
	self listActiveSessionsOn: html