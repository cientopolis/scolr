callbacks - up/downloading
uploadResultSet


	self call: resultSetUploadComponent.
	resultSetUploadComponent resultSet
		ifNotNil: 
			[self coReview resultSets add: resultSetUploadComponent resultSet.
			self autosave]