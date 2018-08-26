initialize
storageFolderName: aStorageFolderName accessCode: anAccessCode
	accessCode := anAccessCode.
	storageFolderName := aStorageFolderName .
	self loadOrCreateReview.