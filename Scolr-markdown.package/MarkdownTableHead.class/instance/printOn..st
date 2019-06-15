printing
printOn: aStream
	super printOn: aStream.
	aStream
		cr;
		nextPutAll: ('___|' repeat: elements size);
		cr