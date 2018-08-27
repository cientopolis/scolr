callbacks - up/downloading
uploadResultSet
	| component |
	component := ResultSetUploadComponent new.
	self call: component.
	component resultSet
		ifNotNil: [ self coReview resultSets add: component resultSet.
			repository save ]