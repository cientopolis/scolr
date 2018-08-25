accessing
backupFolder
	| folder |
	folder := FileSystem disk workingDirectory resolveString: backupFolderName.
	FileSystem disk ensureCreateDirectory: folder.
	^folder