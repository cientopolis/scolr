callbacks
receiveFile: aFile
	| uploadStream |
	((aFile contentType matches: WAMimeType textCsv) or: [ aFile fileName asLowercase endsWith: 'csv' ])
		ifTrue: [ uploadedFile := self repository randomTempFile.
			uploadStream := FileSystem disk writeStreamOn: uploadedFile.
			[ uploadStream
				binary;
				nextPutAll: aFile rawContents ]
				ensure: [ uploadStream close ] ]
		ifFalse: [ uploadedFile := nil.
			errorMessage := 'The files does not seem to be a valid text/CSV' ]