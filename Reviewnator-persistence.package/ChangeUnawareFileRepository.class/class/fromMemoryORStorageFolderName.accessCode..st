cached-access
fromMemoryORStorageFolderName: storageFolderName accessCode: anAccessCode
	| newRepo |
	monitor
		critical: [ newRepo := self allInstances
				detect: [ :each | each accessCode = anAccessCode & (each storageFolderName = storageFolderName) ]
				ifNone: [ (self storageFolderName: storageFolderName accessCode: anAccessCode)
						save;
						yourself ] ].
	^ newRepo