materialize
materializeClassificationFrom: aDictionary
	^ Classification new
		date: (Date fromString: (aDictionary at: #date));
		author: (self userNamed: ((aDictionary at: #author) at: #username));
		decision: (aDictionary at: #decision) asSymbol;
		comments: (aDictionary at: #comments);
		yourself