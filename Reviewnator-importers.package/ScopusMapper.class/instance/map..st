mapping
map: aCollection
	^ Article
		title: (self titleFrom: aCollection)
		authors: (self authorsFrom: aCollection)
		year: (self yearFrom: aCollection)
		abstract: (self abstractFrom: aCollection)
		documentType: (self documentTypeFrom: aCollection)