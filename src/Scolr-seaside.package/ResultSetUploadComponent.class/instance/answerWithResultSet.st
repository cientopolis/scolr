callbacks
answerWithResultSet
	| result |
	result := ResultSet new.
	result
		articles: importer articles;
		database: database;
		comments: comment;
		duplicateCount: importer importReport ignoredArticles size;
		searchString: searchString.
	self deleteTempFileIfExists.
	self answer: result