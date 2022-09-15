testing
testFromBibtextEntry
	| entry |
	entry := BibtexEntry
		type: 'book'
		citationKey: 'key'
		tags:
			(Array
				with: (BibtexTag name: 'editor' value: 'the editor')
				with: (BibtexTag name: 'abstract' value: 'the abstract')
				with: (BibtexTag name: 'title' value: 'the title')
				with: (BibtexTag name: 'year' value: 'the year')).
	articleOne := Article fromBibtexEntry: entry.
	self assert: articleOne title equals: 'the title'.
	self assert: articleOne year equals: 'the year'.
	self assert: articleOne authors equals: 'the editor'.
	self assert: articleOne abstract equals: 'the abstract'.
	self assert: articleOne documentType equals: 'book'.
	self assert: articleOne bibtexEntry equals: entry.
	entry at: 'author' put: 'the author'.
	articleOne := Article fromBibtexEntry: entry.
	self assert: articleOne authors equals: 'the author'