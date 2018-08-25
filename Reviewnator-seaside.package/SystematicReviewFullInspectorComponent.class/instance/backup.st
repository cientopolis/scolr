callbacks
backup

	self call: backupComponent.
	backupComponent accepted
		ifTrue: [ self saveToFile: Preferences singleton backupFile ]