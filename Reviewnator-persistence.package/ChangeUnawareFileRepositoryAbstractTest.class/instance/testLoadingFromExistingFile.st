testing
testLoadingFromExistingFile
	| storageFromExistingFile coReview |
	self assert: self dummyCoReviewFileReference exists.
	storageFromExistingFile := self repositoryClass
		storageFolderName: storageFolderName
		accessCode: 'dummyCoReview'.
	coReview := storageFromExistingFile coReview.
	self assertCoReviewIsOk: coReview.
	self assertResultSetsAreOk: coReview resultSets.
	self assertArticlesAreOkInSets: coReview resultSets.
	self assertUsersAreUniqueInReview: coReview.
	self assertClassificationAndReviewAreOkIn: coReview.
	self assertCommentAreOkIn: coReview 