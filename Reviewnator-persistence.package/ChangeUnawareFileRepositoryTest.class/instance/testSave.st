testing
testSave
	| storage |
	storage := self repositoryClass
		storageFolderName: storageFolderName
		accessCode: anAccessCode
		coReview: aCoReview.
	self deny: storage storageFileFullName asFileReference exists.
	storage save.
	self assert: storage storageFileFullName asFileReference exists.
	storage storageFileFullName asFileReference delete