save
save
	FileStream
		forceNewFileNamed: self class configurationFilename
		do:
			[ :aStream | FLSerializer newDefault serialize: self on: aStream binary ]