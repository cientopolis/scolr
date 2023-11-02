convert
asBibtexEntryWithKey: aString

	| entry |
	entry := bibtexEntry
		         ifNotNil: [ 
			         bibtexEntry deepCopy
				         citationKey: aString;
				         yourself ]
		         ifNil: [ 
			         BibtexEntry type: 'misc' citationKey: aString tags: (Set
					          with: (BibtexTag name: 'title' value: title)
					          with: (BibtexTag name: 'author' value: authors)
					          with: (BibtexTag name: 'abstract' value: abstract)
					          with: (BibtexTag name: 'year' value: year)) ].
	self tags ifNotEmpty: [ 
		entry at: 'scolr_tags' put: (String streamContents: [ :strm | 
				 self tags
					 do: [ :each | strm nextPutAll: each ]
					 separatedBy: [ strm nextPutAll: '; ' ] ]) ].
	^ entry