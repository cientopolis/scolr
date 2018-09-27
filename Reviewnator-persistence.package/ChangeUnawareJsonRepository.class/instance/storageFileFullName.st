hooks
storageFileFullName
	^ ((FileSystem disk workingDirectory resolveString: storageFolderName) asFileReference
		/ (self accessCode , '.json')) fullName