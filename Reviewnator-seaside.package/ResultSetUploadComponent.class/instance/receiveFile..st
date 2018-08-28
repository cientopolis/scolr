callbacks
receiveFile: aFile
	| uploadStream |
	(aFile contentType matches: WAMimeType textCsv)
		ifTrue: [ uploadedFile := self configuration uploadFolder / aFile fileName.
			uploadStream := FileSystem disk writeStreamOn: uploadedFile.
			[ uploadStream
				binary;
				nextPutAll: aFile rawContents ]
				ensure: [ uploadStream close ] ]
		ifFalse: [ uploadedFile := nil.
			errorMessage := 'The files does not seem to be a valid text/CSV' ]