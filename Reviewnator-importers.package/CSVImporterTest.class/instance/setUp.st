running
setUp
	| stream |
	stream := (FileSystem disk workingDirectory / 'scopusHapticAgricultireTitleCaseHeaders.csv') writeStream.
	[ stream
		binary;
		nextPutAll: self scopusHapticAgricultireTitleCaseHeaders ]
		ensure: [ stream close ]