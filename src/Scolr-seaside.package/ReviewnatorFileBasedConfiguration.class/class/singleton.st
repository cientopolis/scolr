loading
singleton
	^ singleton ifNil: [ singleton := self loadOrCreate ]