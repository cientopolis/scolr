callbacks - up/downloading
uploadResultSet
	| component resultSet |
	component := ResultSetUploadComponent
		repository: repository
		currentUser: currentUser.
	resultSet := self call: component.
	resultSet
		ifNotNil: [ self coReview resultSets add: resultSet.
			repository save ]