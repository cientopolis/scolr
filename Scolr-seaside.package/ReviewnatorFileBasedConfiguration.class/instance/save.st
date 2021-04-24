save
save
	FileStream
		forceNewFileNamed: self class fuelConfigurationFilename
		do:
			[ :aStream | FLSerializer newDefault serialize: self on: aStream binary ]