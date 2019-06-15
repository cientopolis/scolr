callbacks
receiveFile: aFile
	((aFile contentType matches: WAMimeType textCsv)
		or: [ aFile fileName asLowercase endsWith: 'csv' ])
		ifTrue: [ uploadedFile := self repository randomTempFile.
			uploadedFile asFileReference
				binaryWriteStreamDo: [ :uploadStream | uploadStream nextPutAll: aFile rawContents ] ]
		ifFalse: [ uploadedFile := nil.
			errorMessage := 'The files does not seem to be a valid text/CSV' ]