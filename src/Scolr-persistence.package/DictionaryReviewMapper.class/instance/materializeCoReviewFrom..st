materialize
materializeCoReviewFrom: aDictionary

	users := ((aDictionary at: #users) collect: [ :each | 
		          self materializeUserFrom: each ]) asOrderedCollection.
	^ CollaborativeReview new
		  title: (aDictionary at: #title);
		  objective: (aDictionary at: #objective ifAbsent: ['']);
		  researchQuestions: (aDictionary at: #researchQuestions ifAbsent: ['']);
		  terms: (aDictionary at: #terms ifAbsent: ['']);
		  basicSearchQuery: (aDictionary at: #basicSearchQuery ifAbsent: ['']);
		  databases: (aDictionary at: #databases ifAbsent: ['']);
		  notes: (aDictionary at: #notes ifAbsent: ['']);
		  users: users;
		  inclusionCriteria: (aDictionary at: #inclusionCriteria ifAbsent: ['']);
		  exclusionCriteria: (aDictionary at: #exclusionCriteria ifAbsent: ['']);
		  resultSets: ((aDictionary at: #resultSets) collect: [ :each | 
					   self materializeResultSetFrom: each ]) asOrderedCollection;
		  isPromiscuous: (aDictionary at: #isPromiscuous);
		  comments: ((aDictionary at: #comments) collect: [ :each | 
					   self materializeCommentFrom: each ]) asOrderedCollection;
		  yourself