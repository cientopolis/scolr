callbacks
receiveFile: aFile
	|  uploadFile uploadStream importer |
	uploadFile := Preferences singleton uploadFolder / aFile fileName.
	uploadStream := FileSystem disk writeStreamOn: uploadFile.
	[ 
	uploadStream
		binary;
		nextPutAll: aFile rawContents ]
		ensure: [ uploadStream close ].
	importer := ScopusImporter forFile: uploadFile.
	importer read.
	resultSet := importer resultSet