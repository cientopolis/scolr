saving
save
	self prepareStorageFolder.
	FileStream
		forceNewFileNamed: self storageFileFullName
		do: [ :aStream | FLSerializer newDefault serialize: self coReview on: aStream binary ]