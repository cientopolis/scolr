save
save

	FileStream
		forceNewFileNamed: self class jsonConfigurationFilename
		do:
			[ :aStream | aStream nextPutAll: self asJson ]


	" Should be.
	
	self class jsonConfigurationFilename asFileReference
		ensureDelete;
		writeStreamDo: [ :stream | stream nextPutAll: self asJson ]"