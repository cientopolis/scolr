callbacks
receiveFile: aFile
	| uploadFile uploadStream importer |
	importReport := nil.
	(aFile contentType matches: WAMimeType textCsv)
		ifTrue: [ uploadFile := Preferences singleton uploadFolder / aFile fileName.
			uploadStream := FileSystem disk writeStreamOn: uploadFile.
			[ uploadStream
				binary;
				nextPutAll: aFile rawContents ]
				ensure: [ uploadStream close ].
			importer := ScopusImporter forFile: uploadFile.
			importReport := ImportReport new.
			importer readReportingTo: importReport.
			self reportWarningsAndErrorsFromImportReport.
			resultSet := importer resultSet.
			uploadFile delete ]
		ifFalse: [ errorMessage := 'The files does not seem to be a valid text/CSV' ]