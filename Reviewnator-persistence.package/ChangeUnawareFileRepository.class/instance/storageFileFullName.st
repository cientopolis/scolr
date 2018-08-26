accessing
storageFileFullName
	^ ((FileSystem disk workingDirectory resolveString: storageFolderName) asFileReference
		/ (self accessCode , '.fuel')) fullName