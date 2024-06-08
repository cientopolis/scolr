rendering
renderSendTestEmailOn: html

	html paragraph: [ 
		html strong:
			'Sent test email from '
			, ReviewnatorFileBasedConfiguration singleton
					senderForNotificationEmails greaseString, ' to ' , self session user username greaseString.
		html space.
		html anchor
			callback: [ self sendTestEmail ];
			with: '[Send]' ]