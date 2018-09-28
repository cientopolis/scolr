printing
printOn: aStream
	aStream
		nextPutAll: ('#' repeat: level);
		nextPutAll: ' '.
	super printOn: aStream.
	aStream
		cr;
		cr