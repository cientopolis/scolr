saving
saveAsFuel
	monitor
		critical: [ self prepareStorageFolder.
			FileStream
				forceNewFileNamed: self storageFileFullName
				do: [ :aStream | FLSerializer newDefault serialize: self coReview on: aStream binary ] ]