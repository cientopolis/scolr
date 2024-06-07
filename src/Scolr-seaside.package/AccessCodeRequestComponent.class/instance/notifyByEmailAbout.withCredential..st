email notification
notifyByEmailAbout: someRepo withCredential: someCredential

	| mailMessaje |
	ReviewnatorDeployer senderForNotificationEmails ifNil: [ ^ nil ].
	MailerSendAPI singleton isProperlyConfigured ifFalse: [ ^ nil ].
	someCredential requestorsEmail isValidEmail ifFalse: [ ^ nil ].
	mailMessaje := self
		               mailMessageToNotifyAbout: someRepo
		               withCredential: someCredential.
   MailerSendAPI singleton send: mailMessaje .