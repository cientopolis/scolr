rendering
editPropertiesdOf: resultSet
	| editor |
	editor := ResultSetPropertiesEditorComponent
		repository: self repository
		currentUser: self currentUser
		accessCredential: self accessCredential.
	editor resultSet: resultSet.
	self parent call: editor