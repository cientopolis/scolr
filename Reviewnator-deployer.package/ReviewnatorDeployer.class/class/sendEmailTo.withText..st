smtp
sendEmailTo: requestorsEmail withText: emailText
	| text |
	text := 'From: ' , adminEmail
		,
			'
To: ' , requestorsEmail
		,
			'
Subject: Access code to your Scolr review


',emailText.
	smtp notNil & adminEmail notNil
		ifTrue: [ SMTPClient
				deliverMailFrom: adminEmail
				to:
					{requestorsEmail.
					adminEmail}
				text: text
				usingServer: smtp ]