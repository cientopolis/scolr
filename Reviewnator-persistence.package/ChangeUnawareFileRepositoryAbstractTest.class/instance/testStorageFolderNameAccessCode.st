tests-to-improve
testStorageFolderNameAccessCode
	| storageFromExistingFile sets |
	self fail: 'think this one better'.
	self assert: self dummyCoReviewFileReference exists.
	storageFromExistingFile := self repositoryClass storageFolderName: storageFolderName accessCode: 'dummyCoReview'.
	self assert: storageFromExistingFile coReview title equals: 'This is the title'.
	self assert: storageFromExistingFile coReview notes equals: 'These are the notes'.
	self assert: storageFromExistingFile coReview inclusionCriteria equals: 'This is the inclusion criteria'.
	self assert: storageFromExistingFile coReview exclusionCriteria equals: 'This is the exclusion criteria'.
	self assert: storageFromExistingFile coReview resultSets size equals: 2.
	sets := storageFromExistingFile coReview resultSets.
	self
		assertCollection: (sets collect: [ :each | each searchString ])
		equals: (OrderedCollection with: 'Search string one' with: 'Search string two').
	self
		assertCollection: (sets collect: [ :each | each database ])
		equals: (OrderedCollection with: 'Database one' with: 'Database two').
	self
		assertCollection: (sets collect: [ :each | each comments ])
		equals: (OrderedCollection with: 'Comments one' with: 'Comments two').

	"From non-existing file"
	self deny: self nonExistingFileReference exists.
	storageFromExistingFile := self repositoryClass storageFolderName: storageFolderName accessCode: 'non-existing'.
	self assert: storageFromExistingFile coReview notes equals: ''