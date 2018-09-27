serialize
serializeResultSet: aResultSet
	^ Dictionary new
		at: #searchString put: aResultSet searchString;
		at: #database put: aResultSet database;
		at: #comments put: aResultSet comments;
		at: #articles put: (aResultSet articles collect: [ :each | self serializeArticle: each ]);
		yourself