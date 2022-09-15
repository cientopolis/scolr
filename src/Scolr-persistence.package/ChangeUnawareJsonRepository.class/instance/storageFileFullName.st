hooks
storageFileFullName
	^ ((FileSystem disk workingDirectory resolveString: storageFolderName) asFileReference
		/ (self repositoryFilename , '.json')) fullName