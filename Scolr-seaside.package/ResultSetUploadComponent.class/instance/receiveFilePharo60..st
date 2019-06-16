callbacks
receiveFilePharo60: aFile
	| uploadStream |
	importer := self importerForFile: aFile.
	importer ifNil: [ ^ errorMessage := 'The files does not seem to be a valid Bibtex or text/CSV' ].
	uploadedFile := self repository randomTempFile.
	uploadStream := FileSystem disk writeStreamOn: uploadedFile.
	[ uploadStream
		binary;
		nextPutAll: aFile rawContents ]
		ensure: [ uploadStream close ]