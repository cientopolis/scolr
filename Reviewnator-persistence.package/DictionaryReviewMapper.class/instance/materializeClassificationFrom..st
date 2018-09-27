materialize
materializeClassificationFrom: aDictionary
	^ Classification new
		date: (Date fromString: (aDictionary at: #date));
		author: (self userNamed: (aDictionary at: #author));
		tags: (aDictionary at: #tags) asSet;
		decision: (aDictionary at: #decision);
		comments: (aDictionary at: #comments);
		yourself