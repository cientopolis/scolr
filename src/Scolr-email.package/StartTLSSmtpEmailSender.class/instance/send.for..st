sending
send: aMailMessage for: anApplication

	| theSmtpClient |
	(theSmtpClient := ZdcSecureSMTPClient new)
		useStartTLS;
		user: (self usernameFor: anApplication);
		password: (self passwordFor: anApplication).

	[ 
	theSmtpClient
		openOnHost:
		(NetNameResolver addressForName: (self serverFor: anApplication))
		port: (self portFor: anApplication).

	theSmtpClient
		mailFrom: aMailMessage from
		to: (aMailMessage to splitOn: ',')
		text: aMailMessage text;
		quit;
		close.
	self transcriptLog: 'Notification sent to ' , aMailMessage to ]
		on: Error
		do: [ :err | self transcriptLog: err printString ]