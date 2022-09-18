accessing
portFor: application

	^ (application preferenceAt: #smtpPort) asNumber