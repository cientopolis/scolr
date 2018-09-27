testing
testLoadingFromNonExistingFile
	| storageFromExistingFile |
	"From non-existing file"
	self deny: self nonExistingFileReference exists.
	storageFromExistingFile := self repositoryClass storageFolderName: storageFolderName accessCode: 'non-existing'.
	self assert: storageFromExistingFile coReview notes equals: ''