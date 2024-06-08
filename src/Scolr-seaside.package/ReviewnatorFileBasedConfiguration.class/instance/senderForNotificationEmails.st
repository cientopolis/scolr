email notification
senderForNotificationEmails

	^ OSEnvironment current at: 'NOTIFICATION_EMAIL' ifAbsent: nil