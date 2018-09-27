testing
testLoadingFromExistingFile
	| storageFromExistingFile coReview |
	self assert: self dummyCoReviewFileReference exists.
	storageFromExistingFile := self repositoryClass storageFolderName: storageFolderName accessCode: 'dummyCoReview'.
	coReview := storageFromExistingFile coReview.
	self assertCoReviewIsOk: coReview.
	self assertArticlesAreOkInSets: coReview resultSets.
	self assertUsersAreUniqueInReview: coReview