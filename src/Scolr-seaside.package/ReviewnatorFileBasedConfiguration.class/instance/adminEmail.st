email notification
adminEmail

	^ OSEnvironment current at: 'ADMIN_EMAIL' ifAbsent: nil