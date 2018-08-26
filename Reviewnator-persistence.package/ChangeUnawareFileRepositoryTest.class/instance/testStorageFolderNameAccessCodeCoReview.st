testing
testStorageFolderNameAccessCodeCoReview
	| storage |
	storage := ChangeUnawareFileRepository storageFolderName: storageFolderName accessCode: anAccessCode coReview: aCoReview.
	self assert: storage coReview equals: aCoReview