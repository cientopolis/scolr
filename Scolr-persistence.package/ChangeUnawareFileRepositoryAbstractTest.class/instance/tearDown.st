running
tearDown
	| folder |
	self deleteFileWithDummyCoReview.
	folder := FileSystem workingDirectory resolveString: storageFolderName.
	folder exists
		ifTrue: [ folder delete ]