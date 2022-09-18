accessing
portFor: application

	self transcriptLog: (application preferenceAt: #smtpPort).

	^ (application preferenceAt: #smtpPort) asNumber