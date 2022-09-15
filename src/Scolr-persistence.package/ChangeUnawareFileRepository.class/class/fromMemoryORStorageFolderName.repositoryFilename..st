cached-access
fromMemoryORStorageFolderName: storageFolderName repositoryFilename: repositoryFilename
	| newRepo |
	ClassApiMonitor
		critical: [ newRepo := CachedRepositories
				detect: [ :each | 
					each repositoryFilename = repositoryFilename
						& (each storageFolderName = storageFolderName) ]
				ifNone: [ CachedRepositories
						add:
							(self
								storageFolderName: storageFolderName
								repositoryFilename: repositoryFilename) ] ].
	^ newRepo