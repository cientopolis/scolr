load and save
save
	FileStream
		forceNewFileNamed: self storageFileFullName
		do:
			[ :aStream | FLSerializer newDefault serialize: self coReview on: aStream binary ]