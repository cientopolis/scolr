printing
printOn: aStream
	aStream
		nextPutAll: accessCode;
		nextPutAll: repositoryFilename;
		nextPutAll: notes;
		nextPutAll: articleLimit printString;
		nextPutAll: modificationDate printString;
		nextPutAll: isActive printString;
		nextPutAll: isAdmin printString