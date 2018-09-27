testing
assertArticlesAreOkInSets: sets
	self
		assertCollection: (sets collect: [ :each | each searchString ])
		equals:
			(OrderedCollection with: 'Search string one' with: 'Search string two').
	self
		assertCollection: (sets collect: [ :each | each database ])
		equals: (OrderedCollection with: 'Database one' with: 'Database two').
	self
		assertCollection: (sets collect: [ :each | each comments ])
		equals: (OrderedCollection with: 'Comments one' with: 'Comments two').
	self
		assertCollection: (sets first articles collect: [ :each | each title ])
		equals: (OrderedCollection with: 'Título uno' with: 'Título dos').
	self
		assertCollection: (sets first articles collect: [ :each | each authors ])
		equals: (OrderedCollection with: 'Autores uno' with: 'Autores dos').
	self
		assertCollection: (sets first articles collect: [ :each | each year ])
		equals: (OrderedCollection with: 'Año uno' with: 'Año dos').
	self
		assertCollection: (sets first articles collect: [ :each | each abstract ])
		equals: (OrderedCollection with: 'Abstract uno' with: 'Abstract dos').
	self
		assertCollection: (sets first articles collect: [ :each | each documentType ])
		equals: (OrderedCollection with: 'Tipo uno' with: 'Tipo dos')