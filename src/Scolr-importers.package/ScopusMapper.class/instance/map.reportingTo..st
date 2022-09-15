mapping
map: aCollection reportingTo: anImportReport
	| title year authors abstract documentType |
	title := (self titleFrom: aCollection)
		ifNil: [ anImportReport reportWarning: 'One article had a missing title'.
			'missing title' ].
	year := (self yearFrom: aCollection)
		ifNil: [ anImportReport reportWarning: 'One article had a missing year'.
			'missing year' ].
	authors := (self authorsFrom: aCollection)
		ifNil: [ anImportReport reportWarning: 'One article had a missing authors'.
			'missing authors' ].
	abstract := (self abstractFrom: aCollection)
		ifNil: [ anImportReport reportWarning: 'One article had a missing abstract'.
			'missing abstract' ].
	documentType := (self documentTypeFrom: aCollection) ifNil: [ 'undefined' ].
	^ Article
		title: title
		authors: authors
		year: year
		abstract: abstract
		documentType: documentType