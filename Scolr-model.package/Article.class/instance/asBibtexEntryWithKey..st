convert
asBibtexEntryWithKey: aString
	^ bibtexEntry
		ifNotNil: [ bibtexEntry deepCopy
				citationKey: aString;
				yourself ]
		ifNil: [ BibtexEntry
				type: 'misc'
				citationKey: aString
				tags:
					(Set
						with: (BibtexTag name: 'title' value: title)
						with: (BibtexTag name: 'author' value: authors)
						with: (BibtexTag name: 'abstract' value: abstract)
						with: (BibtexTag name: 'year' value: year)) ]