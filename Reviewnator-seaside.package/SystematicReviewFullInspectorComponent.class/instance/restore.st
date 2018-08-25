callbacks
restore
	| restoreComponent |
	restoreComponent := RestoreComponent new.
	self call: restoreComponent.
	restoreComponent accepted
		ifTrue: [ 
			self logout. 
			self recoverFromFile: restoreComponent fileToRestoreFrom.
			self autosave ]