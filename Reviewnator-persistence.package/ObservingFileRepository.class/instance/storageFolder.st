accessing
storageFolder
	| folder |
	folder := FileSystem disk workingDirectory resolveString: storageFolderName.
	FileSystem disk ensureCreateDirectory: folder.
	^ folder