smtp
sendEmailTo: requestorsEmail withText: emailText andSubject: subject
	| text |
	text := 'From: ' , adminEmail
		,
			'
To: ' , requestorsEmail
		,
			'
Subject:', subject, '


',emailText.
	smtp notNil & adminEmail notNil
		ifTrue: [ SMTPClient
				deliverMailFrom: adminEmail
				to:
					{requestorsEmail.
					adminEmail}
				text: text
				usingServer: smtp ]