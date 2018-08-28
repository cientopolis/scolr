rendering-report
answerWithResultSet
	| result |
	result := importer resultSet.
	result
		database: database;
		comments: comment;
		searchString: searchString.
	self answer: result