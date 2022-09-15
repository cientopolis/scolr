callbacks
uploadResultSet
	| component resultSet |
	component := ResultSetUploadComponent repository: repository currentUser: currentUser accessCredential: accessCredential.
	resultSet := self call: component.
	resultSet
		ifNotNil: [ self coReview addResultSet: resultSet.
			self log: 'added ' , resultSet articles size printString , ' articles to a review titled "' , self coReview title , '"'.
			self selectResultSet: resultSet.
			repository save ]