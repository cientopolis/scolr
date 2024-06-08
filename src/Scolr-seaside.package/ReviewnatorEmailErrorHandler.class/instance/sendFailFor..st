private
sendFailFor: anException

	| email |
	MailerSendAPI singleton isProperlyConfigured ifFalse: [ ^ self ].
	email := ScolrPlainTextEmail new
		         from: ReviewnatorDeployer senderForNotificationEmails;
		         to: (Set with: ReviewnatorDeployer adminEmail);
		         subject: (self titleForException: anException);
		         text: (self emailTextForException: anException);
		         yourself.
	MailerSendAPI singleton send: email