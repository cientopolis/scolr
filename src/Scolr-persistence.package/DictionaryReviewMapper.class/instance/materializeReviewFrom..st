materialize
materializeReviewFrom: aDictionary
	^ Review new
		date: (Date fromString: (aDictionary at: #date));
		author: (self userNamed: ((aDictionary at: #author) at: #username));
		dimensionSpecificComments: (aDictionary at: #dimensionSpecificComments);
		yourself