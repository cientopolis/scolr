testing
assertArticlesAreOkInSets: sets
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