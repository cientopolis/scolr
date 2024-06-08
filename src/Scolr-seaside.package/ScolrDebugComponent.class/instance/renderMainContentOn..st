rendering
renderMainContentOn: html

	html heading: 'Sessions'.
	self summarizePotentiallyActiveSessionsOn: html.
	self summarizeExpiredSessionsOn: html.
	self summarizeGptRequestLogOn: html.
	self renderSendTestEmailOn: html.
	self renderTestEmailErrorHandlerOn: html. 
	self listActiveSessionsOn: html