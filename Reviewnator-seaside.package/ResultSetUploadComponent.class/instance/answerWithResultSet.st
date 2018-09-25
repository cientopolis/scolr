callbacks
answerWithResultSet
	| result |
	result := ResultSet new.
	result
	   articles: importer articles;
		database: database;
		comments: comment;
		searchString: searchString.
	self deleteTempFileIfExists.
	self answer: result