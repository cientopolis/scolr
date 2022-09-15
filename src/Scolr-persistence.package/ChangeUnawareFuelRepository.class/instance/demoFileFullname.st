hooks
demoFileFullname
	^ ((FileSystem disk workingDirectory resolveString: storageFolderName) asFileReference
		/ ('demogorgon.fuel')) fullName