private
getRepositoryFromMemoryOrDiskWithAccessCode
	| newRepo |
	^ ChangeUnawareFileRepository allInstances
		detect:
			[ :each | each accessCode = accessCode & (each storageFolderName = configuration storageFolder) ]
		ifNone: [ newRepo := ChangeUnawareFileRepository
				storageFolderName: self configuration storageFolder
				accessCode: accessCode.
			newRepo
				save;
				yourself ]