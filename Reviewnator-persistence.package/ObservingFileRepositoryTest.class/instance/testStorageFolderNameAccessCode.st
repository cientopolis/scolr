testing
testStorageFolderNameAccessCode
	| storageFromExistingFile |
	self assert: (storage storageFolder / 'dummyCoReview.fuel') exists.
	storageFromExistingFile := ObservingFileRepository storageFolderName: storageFolderName accessCode: 'dummyCoReview'.
	self assert: storageFromExistingFile coReview notes equals: 'This is an example co-review'.