materialize
materializeCoReviewFrom: aDictionary
	users := ((aDictionary at: #users) collect: [ :each | self materializeUserFrom: each ]) asOrderedCollection.
	^ CollaborativeReview new
		title: (aDictionary at: #title);
		notes: (aDictionary at: #notes);
		users: users;
		inclusionCriteria: (aDictionary at: #inclusionCriteria);
		exclusionCriteria: (aDictionary at: #exclusionCriteria);
		resultSets: ((aDictionary at: #resultSets) collect: [ :each | self materializeResultSetFrom: each ]) asOrderedCollection;
		isPromiscuous: (aDictionary at: #isPromiscuous);
		comments: ((aDictionary at: #comments) collect: [ :each | self materializeCommentFrom: each ]) asOrderedCollection;
		yourself