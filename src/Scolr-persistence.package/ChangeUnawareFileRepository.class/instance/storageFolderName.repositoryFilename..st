initialize
storageFolderName: aStorageFolderName repositoryFilename: aFilename
	repositoryFilename := aFilename.
	storageFolderName := aStorageFolderName .
	self loadOrCreateReview.