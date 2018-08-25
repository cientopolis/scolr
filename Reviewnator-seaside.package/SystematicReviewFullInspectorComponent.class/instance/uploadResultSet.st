callbacks - up/downloading
uploadResultSet
	resultSetUploadComponent := ResultSetUploadComponent new.
	self call: resultSetUploadComponent.
	resultSetUploadComponent resultSet
		ifNotNil: [ self coReview resultSets add: resultSetUploadComponent resultSet.
			self autosave ]