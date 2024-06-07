rendering
renderSendTestEmailOn: html

	html paragraph: [ 
		html strong: 'Sent test email from '
			, ReviewnatorDeployer senderForNotificationEmails greaseString
			, ' to ' , self session user username.
		html space.
		html anchor
			callback: [ self sendTestEmail ];
			with: '[Send]' ]