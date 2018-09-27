cached-access
fromMemoryORStorageFolderName: storageFolderName accessCode: anAccessCode
	| newRepo |
	^ self allInstances
		detect: [ :each | 
			each accessCode = anAccessCode
				& (each storageFolderName = storageFolderName) ]
		ifNone: [ newRepo := self
				storageFolderName: self configuration storageFolder
				accessCode: anAccessCode .
			newRepo
				save;
				yourself ]