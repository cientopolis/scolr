callbacks
answerWithResultSet
	| result |
	result := importer resultSet.
	result
		database: database;
		comments: comment;
		searchString: searchString.
	self deleteTempFileIfExists.
	self answer: result