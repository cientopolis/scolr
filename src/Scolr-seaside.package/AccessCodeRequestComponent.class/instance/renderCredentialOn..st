rendering
renderCredentialOn: html
	html paragraph
		with: [ html
				text: 'Your access code is: ';
				strong: credential accessCode ].
	html paragraph: 'Write it down before you forget it'.
	html paragraph: 'Share it only with your collaborators'.
	html anchor
		callback: [ self acceptCredentialAndGoToTheLandingPage ];
		with: [ html tbsButton: 'Thanks! I take it' ]