private
prepareStorageFolder
	| storageFolderReference |
	storageFolderName := 'reviewnator-tests-delete' , 100 atRandom printString.
	[ storageFolderReference := FileSystem disk workingDirectory resolveString: storageFolderName.
	storageFolderReference exists ] whileTrue: [ storageFolderName := 'reviewnator-tests-delete' , 100 atRandom printString ].
	storageFolderReference createDirectory