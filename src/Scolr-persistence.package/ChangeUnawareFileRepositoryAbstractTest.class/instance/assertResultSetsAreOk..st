testing
assertResultSetsAreOk: sets
	self
		assertCollection: (sets collect: [ :each | each searchString ])
		equals: (OrderedCollection with: 'Search string one' with: 'Search string two').
	self
		assertCollection: (sets collect: [ :each | each database ])
		equals: (OrderedCollection with: 'Database one' with: 'Database two').
	self
		assertCollection: (sets collect: [ :each | each comments ])
		equals: (OrderedCollection with: 'Comments one' with: 'Comments two').
	self
		assertCollection: (sets collect: [ :each | each duplicateCount ])
		equals: (OrderedCollection with: 10 with: 0)