running
setUp
	aCoReview := CollaborativeReview new.
	aCoReview notes: 'The setUp coreview'.
	anAccessCode := 'AF2345'.
	self prepareStorageFolder.
	self prepareFileWithDummyCoReview.