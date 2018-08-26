testing
testStorageFolderNameAccessCode
	| storageFromExistingFile |
	self assert: (storageFolderName asFileReference  / 'dummyCoReview.fuel') exists.
	storageFromExistingFile := ChangeUnawareFileRepository storageFolderName: storageFolderName accessCode: 'dummyCoReview'.
	self assert: storageFromExistingFile coReview notes equals: 'This is an example co-review'.