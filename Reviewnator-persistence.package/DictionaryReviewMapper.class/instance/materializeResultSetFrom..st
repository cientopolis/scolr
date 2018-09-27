materialize
materializeResultSetFrom: aDictionary
	^ ResultSet new
		searchString: (aDictionary at: #searchString);
		database: (aDictionary at: #database);
		comments: (aDictionary at: #comments);
		articles: ((aDictionary at: #articles) collect: [ :each | self materializeArticleFrom: each ]) asOrderedCollection;
		yourself