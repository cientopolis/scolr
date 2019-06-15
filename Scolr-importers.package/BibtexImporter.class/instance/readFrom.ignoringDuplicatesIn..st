importing
readFrom: aFileReference ignoringDuplicatesIn: existingArticles
	| parser entries |
	parser := PPBibtexParser new.
	entries := parser parse: aFileReference readStream contents.
	entries
		do:
			[ :entry | self add: (Article fromBibtexEntry: entry) ifNotIn: existingArticles ]