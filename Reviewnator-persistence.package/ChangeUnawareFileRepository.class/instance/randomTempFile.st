accessing
randomTempFile
	^ (FileSystem disk workingDirectory resolveString: storageFolderName) asFileReference / (250000 atRandom printString , '.tmp')