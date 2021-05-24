saving
save
	[ monitor
		critical: [ self prepareStorageFolder.
			self storageFileFullName asFileReference 
				ensureDelete;
				writeStreamDo: [ :aStream | self serializeToStream: aStream ] ] ]
		fork