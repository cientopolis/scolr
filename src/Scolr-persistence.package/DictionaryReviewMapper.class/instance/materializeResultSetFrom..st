materialize
materializeResultSetFrom: aDictionary
	^ ResultSet new
		searchString: (aDictionary at: #searchString);
		database: (aDictionary at: #database);
		comments: (aDictionary at: #comments);
		duplicateCount: (aDictionary at: #duplicateCount);
		articles:
			((aDictionary at: #articles) collect: [ :each | self materializeArticleFrom: each ])
				asOrderedCollection;
		yourself