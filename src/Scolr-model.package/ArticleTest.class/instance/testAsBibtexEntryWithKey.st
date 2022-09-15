testing
testAsBibtexEntryWithKey
	| entry asEntryWithKey |
	asEntryWithKey := articleOne asBibtexEntryWithKey: 'abcKey'.
	self assert: asEntryWithKey citationKey equals: 'abcKey'.
	self assert: asEntryWithKey year equals: articleOne year.
	self assert: asEntryWithKey type equals: 'misc'.
	self assert: (articleOne asBibtexEntryWithKey: 'abcKey') equals: (articleOne asBibtexEntryWithKey: 'abcKey').
	entry := BibtexEntry
		type: 'book'
		citationKey: 'key'
		tags:
			(Array
				with: (BibtexTag name: 'editor' value: 'the editor')
				with: (BibtexTag name: 'abstract' value: 'the abstract')
				with: (BibtexTag name: 'title' value: 'the title')
				with: (BibtexTag name: 'year' value: 'the year')).
	articleTwo := Article fromBibtexEntry: entry.
	asEntryWithKey := articleTwo asBibtexEntryWithKey: 'abcKey'.
	self assert: (asEntryWithKey == entry) not.
	self assert: asEntryWithKey citationKey equals: 'abcKey'.
	self assert: asEntryWithKey year equals: entry year