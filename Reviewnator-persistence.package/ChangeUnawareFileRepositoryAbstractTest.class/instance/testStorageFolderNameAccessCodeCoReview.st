tests-to-improve
testStorageFolderNameAccessCodeCoReview
	| storage |
	self fail: 'think this one better'.
	storage := self repositoryClass
		storageFolderName: storageFolderName
		accessCode: self someAccessCode
		coReview: self dummyCoReview.
	self assert: storage coReview equals: self dummyCoReview