email notification
notifyByEmailAbout: someRepo withCredential: someCredential

	| mailMessaje |
	ReviewnatorFileBasedConfiguration singleton
		senderForNotificationEmails ifNil: [ ^ nil ].
	MailerSendAPI singleton isProperlyConfigured ifFalse: [ ^ nil ].
	someCredential requestorsEmail isValidEmail ifFalse: [ ^ nil ].
	mailMessaje := self
		               mailMessageToNotifyAbout: someRepo
		               withCredential: someCredential.
	MailerSendAPI singleton send: mailMessaje