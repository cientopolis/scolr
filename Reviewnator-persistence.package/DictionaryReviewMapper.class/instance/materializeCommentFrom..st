materialize
materializeCommentFrom: aDictionary
	^ Comment new
		authorEmail: (aDictionary at: #authorEmail);
		offeredAccessCode: (aDictionary at: #offeredAccessCode);
		text: (aDictionary at: #text);
		timestamp: (DateAndTime readFrom: (aDictionary at: #timestamp) readStream);
		yourself