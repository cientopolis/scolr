callbacks
receiveFile: aFile
	importer := self importerForFile: aFile.
	importer
		ifNil:
			[ ^ errorMessage := 'The files does not seem to be a valid Bibtex or text/CSV' ].
	uploadedFile := self repository randomTempFile.
	uploadedFile asFileReference
		binaryWriteStreamDo: [ :uploadStream | uploadStream nextPutAll: aFile rawContents ].