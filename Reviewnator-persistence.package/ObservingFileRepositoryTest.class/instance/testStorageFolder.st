testing
testStorageFolder
	self deny: (FileSystem workingDirectory resolveString: storageFolderName) exists.
	self assert: storage storageFolder basename equals: storageFolderName .
	self assert: storage storageFolder exists.