testing
testStorageFolderNameAccessCode
	| storageFromExistingFile |
	"From existing file"
	self assert: (storageFolderName asFileReference / 'dummyCoReview.fuel') exists.
	storageFromExistingFile := ChangeUnawareFileRepository storageFolderName: storageFolderName accessCode: 'dummyCoReview'.
	self assert: storageFromExistingFile coReview notes equals: 'This is an example co-review'.

	"From non-existing file"
	self deny: (storageFolderName asFileReference / 'non-existing.fuel') exists.
	storageFromExistingFile := ChangeUnawareFileRepository storageFolderName: storageFolderName accessCode: 'non-existing'.
	self assert: storageFromExistingFile coReview notes equals: ''