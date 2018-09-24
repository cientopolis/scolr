callbacks - up/downloading
uploadResultSet
	| component resultSet |
	component := ResultSetUploadComponent
		repository: repository
		currentUser: currentUser.
	resultSet := self call: component.
	resultSet
		ifNotNil: [ self coReview addResultSet: resultSet.
			repository save ]