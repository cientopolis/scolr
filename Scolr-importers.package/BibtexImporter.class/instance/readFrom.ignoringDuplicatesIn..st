importing
readFrom: aFileReference ignoringDuplicatesIn: existingArticles
	| parser entries |
	parser := PPBibtexParser new.
	entries := parser parse: aFileReference readStream contents.
	entries isPetitFailure
		ifTrue: [ 			^ importReport reportError: 'Sorry, could not import that bibtex file. Does the file contain abbreviations? (look for the # symbol)' ].
	entries
		do:
			[ :entry | self add: (Article fromBibtexEntry: entry) ifNotIn: existingArticles ]