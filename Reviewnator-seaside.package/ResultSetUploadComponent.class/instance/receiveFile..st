callbacks
receiveFile: aFile
	| uploadFile uploadStream importer |
	uploadFile := Preferences singleton uploadFolder / aFile fileName.
	uploadStream := FileSystem disk writeStreamOn: uploadFile.
	[ uploadStream
		binary;
		nextPutAll: aFile rawContents ]
		ensure: [ uploadStream close ].
	importer := ScopusImporter forFile: uploadFile.
	importReport := ImportReport new.
	importer readReportingTo: importReport.
	resultSet := importer resultSet