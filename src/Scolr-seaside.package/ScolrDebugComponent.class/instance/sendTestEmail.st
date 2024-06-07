callbacks
sendTestEmail

	| email |
	email := ScolrPlainTextEmail new
		         to: (Set with: self session user username);
		         from: ReviewnatorDeployer senderForNotificationEmails;
		         subject: 'Scolr emails are working';
		         text:
			         'As I said in the subject. This is a test email to show that Scolr can send emails';
		         yourself.

	MailerSendAPI new send: email