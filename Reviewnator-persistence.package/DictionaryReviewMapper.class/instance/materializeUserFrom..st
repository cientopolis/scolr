materialize
materializeUserFrom: aDictionary 
	^ User new
		username: (aDictionary at: #username);
		lastLoginTimeStamp:  (aDictionary at: #lastLoginTimeStamp);
		yourself