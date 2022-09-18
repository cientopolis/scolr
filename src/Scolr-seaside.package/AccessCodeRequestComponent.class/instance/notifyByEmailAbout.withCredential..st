email notification
notifyByEmailAbout: someRepo withCredential: someCredential

	| mailMessaje |
	mailMessaje := self
		               mailMessageToNotifyAbout: someRepo
		               withCredential: someCredential.
	StartTLSSmtpEmailSender new send: mailMessaje for: self application