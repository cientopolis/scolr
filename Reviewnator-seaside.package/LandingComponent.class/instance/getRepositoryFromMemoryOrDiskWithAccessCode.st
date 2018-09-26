private
getRepositoryFromMemoryOrDiskWithAccessCode
	| newRepo |
	^ ChangeUnawareFileRepository allInstances
		detect: [ :each | 
			each accessCode = accessCredential accessCode
				& (each storageFolderName = self configuration storageFolder) ]
		ifNone: [ newRepo := ChangeUnawareFileRepository
				storageFolderName: self configuration storageFolder
				accessCode: accessCredential accessCode.
			newRepo
				save;
				yourself ]