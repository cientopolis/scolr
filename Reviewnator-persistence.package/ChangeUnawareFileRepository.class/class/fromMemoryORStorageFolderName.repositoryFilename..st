cached-access
fromMemoryORStorageFolderName: storageFolderName repositoryFilename: repositoryFilename
	| newRepo |
	monitor
		critical: [ newRepo := self allInstances
				detect: [ :each | each repositoryFilename = repositoryFilename & (each storageFolderName = storageFolderName) ]
				ifNone: [ (self storageFolderName: storageFolderName repositoryFilename: repositoryFilename)
						save;
						yourself ] ].
	^ newRepo