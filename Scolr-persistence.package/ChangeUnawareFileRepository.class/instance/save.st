saving
save
	[ monitor
		critical: [ self prepareStorageFolder.
			FileStream
				forceNewFileNamed: self storageFileFullName
				do: [ :aStream | self serializeToStream: aStream ] ] ] fork