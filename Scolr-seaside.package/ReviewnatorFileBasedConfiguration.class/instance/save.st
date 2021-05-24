save
save
	self class jsonConfigurationFilename asFileReference
		ensureDelete;
		writeStreamDo: [ :stream | stream nextPutAll: self asJson ]