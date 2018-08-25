accessing
uploadFolder
	| folder |
	folder := FileSystem disk workingDirectory resolveString: uploadFolderName.
	FileSystem disk ensureCreateDirectory: folder.
	^folder