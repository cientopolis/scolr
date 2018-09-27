testing
testStorageFolderNameAccessCodeCoReview
	| storage |
	storage := self repositoryClass storageFolderName: storageFolderName accessCode: anAccessCode coReview: aCoReview.
	self assert: storage coReview equals: aCoReview