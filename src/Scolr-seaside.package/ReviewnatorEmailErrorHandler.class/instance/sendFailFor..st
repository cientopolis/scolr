private
sendFailFor: anException

	| email |
	MailerSendAPI singleton isProperlyConfigured ifFalse: [ ^ self ].
	MailerSendAPI singleton mightBeUnderAbuse ifTrue: [ ^ self ].

	ReviewnatorFileBasedConfiguration singleton adminEmail ifNil: [
		^ nil ].
	email := ScolrPlainTextEmail new
		         from: ReviewnatorFileBasedConfiguration singleton
				         senderForNotificationEmails;
		         to:
			         (Set with:
					          ReviewnatorFileBasedConfiguration singleton adminEmail);
		         subject: (self titleForException: anException);
		         text: (self emailTextForException: anException);
		         yourself.
	MailerSendAPI singleton send: email