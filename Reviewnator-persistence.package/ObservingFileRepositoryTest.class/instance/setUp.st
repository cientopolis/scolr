running
setUp
	aCoReview := CollaborativeReview new.
	anAccessCode := 'AF2345'.
	self prepareStorageFolder.
	self prepareFileWithDummyCoReview.
	storage := ObservingFileRepository
		storageFolderName: storageFolderName
		accessCode: anAccessCode
		coReview: aCoReview