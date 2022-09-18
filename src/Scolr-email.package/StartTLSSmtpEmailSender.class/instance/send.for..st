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
		mailFrom: aMailMessage to: { aMailMessage } text: aMailMessage text;
		quit;
		close ]
		on: Error
		do: [ :err | 
			Transcript
				show: err printString;
				cr ]