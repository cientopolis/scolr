materialize
materializeUserFrom: aDictionary
	^ User new
		username: (aDictionary at: #username);
		lastLoginTimeStamp: (DateAndTime readFrom: (aDictionary at: #lastLoginTimeStamp) readStream);
		yourself