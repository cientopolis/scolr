callbacks
accept
	database isEmpty | searchString isEmpty | comment isEmpty
		ifTrue: [ errorMessage := 'All fields are mandatory' ]
		ifFalse: [ resultSet
				ifNotNil: [ resultSet
						database: database;
						searchString: searchString;
						comments: comment ]
				ifNil: [ errorMessage ifNil: [ errorMessage := 'Did you attach a file?' ] ] ]