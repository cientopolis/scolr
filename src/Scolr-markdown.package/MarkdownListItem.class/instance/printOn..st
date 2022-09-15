printing
printOn: aStream
	aStream nextPutAll: '* '.
	super printOn: aStream.
	aStream cr