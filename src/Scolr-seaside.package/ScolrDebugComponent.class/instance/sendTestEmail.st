callbacks
sendTestEmail

	| email |
	email := ScolrPlainTextEmail new
		         to: (Set with: self session user username);
		         from: ReviewnatorFileBasedConfiguration singleton
				         senderForNotificationEmails;
		         subject: 'Scolr emails are working';
		         text:
			         'As I said in the subject. This is a test email to show that Scolr can send emails';
		         yourself.

	MailerSendAPI singleton send: email