materialize
materializeTagAssignmentFrom: aDictionary
	^ TagAssignment new
		date: (Date fromString: (aDictionary at: #date));
		author: (self userNamed: ((aDictionary at: #author) at: #username));
		tags: (aDictionary at: #tags);
		yourself