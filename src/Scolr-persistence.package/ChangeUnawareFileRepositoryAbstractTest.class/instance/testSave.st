testing
testSave
	| storage |
	storage := self repositoryClass
		storageFolderName: storageFolderName
		repositoryFilename: self someAccessCode
		coReview: self dummyCoReview.
	self deny: storage storageFileFullName asFileReference exists.
	storage save.
	self assert: storage storageFileFullName asFileReference exists.
	storage storageFileFullName asFileReference delete