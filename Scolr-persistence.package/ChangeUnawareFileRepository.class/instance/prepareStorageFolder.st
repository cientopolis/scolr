private
prepareStorageFolder
	| folder |
	folder := FileSystem disk workingDirectory resolveString: storageFolderName.
	folder exists
		ifFalse: [ FileSystem disk ensureCreateDirectory: folder ]