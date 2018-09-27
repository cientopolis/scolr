testing
testStorageFolderNameAccessCode
	| storageFromExistingFile |
	"From existing file"
	self assert: self dummyCoReviewFileReference exists.
	storageFromExistingFile := self repositoryClass
		storageFolderName: storageFolderName
		accessCode: 'dummyCoReview'.
	self
		assert: storageFromExistingFile coReview notes
		equals: 'This is an example co-review'.

	"From non-existing file"
	self deny:
		self nonExistingFileReference exists.
	storageFromExistingFile := ChangeUnawareFileRepository
		storageFolderName: storageFolderName
		accessCode: 'non-existing'.
	self assert: storageFromExistingFile coReview notes equals: ''