callbacks
receiveFile: aFile
	| uploadStream desiredFile |
	desiredFile := Preferences singleton uploadFolder / self desiredFilename.
	uploadStream := FileSystem disk writeStreamOn: desiredFile.
	[ 
	uploadStream
		binary;
		nextPutAll: aFile rawContents ]
		ensure: [ uploadStream close ].
	article mimeType: aFile contentType