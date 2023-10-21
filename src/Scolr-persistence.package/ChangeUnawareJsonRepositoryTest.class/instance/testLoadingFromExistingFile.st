testing
testLoadingFromExistingFile
	| storageFromExistingFile coReview |
	self assert: self dummyCoReviewFileReference exists.
	storageFromExistingFile := ChangeUnawareJsonRepository
		storageFolderName: storageFolderName
		repositoryFilename: 'dummyCoReview'.
	coReview := storageFromExistingFile coReview.
	self assertCoReviewIsOk: coReview.
	self assertResultSetsAreOk: coReview resultSets.
	self assertArticlesAreOkInSets: coReview resultSets.
	self assertUsersAreUniqueInReview: coReview.
	self assertClassificationAndReviewAreOkIn: coReview.
	self assertTagAssignmentsAreOkIn: coReview.
	self assertCommentAreOkIn: coReview.
	self assertBibtexEntriesAreOk: coReview.