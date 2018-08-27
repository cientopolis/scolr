save
save
	FileStream
		forceNewFileNamed: './reviewnator-config.fuel'
		do: [ :aStream | FLSerializer newDefault serialize: self on: aStream binary ]