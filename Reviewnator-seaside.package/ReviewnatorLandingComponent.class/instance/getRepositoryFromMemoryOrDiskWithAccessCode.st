private
getRepositoryFromMemoryOrDiskWithAccessCode
	^ ChangeUnawareFileRepository allInstances
		detect: [ :each | each accessCode = accessCode ]
		ifNone: [ ChangeUnawareFileRepository
				storageFolderName: self configuration storageFolder
				accessCode: accessCode ]