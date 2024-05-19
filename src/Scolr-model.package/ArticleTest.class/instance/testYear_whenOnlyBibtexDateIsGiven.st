testing
testYear_whenOnlyBibtexDateIsGiven

	| entry |
	entry := BibtexEntry new	at: 'date' put: ''; yourself.
	articleOne := Article fromBibtexEntry: entry.
	self assert: articleOne year equals: ''.
	
	entry := BibtexEntry new	at: 'date' put: 'the year'; yourself.
	articleOne := Article fromBibtexEntry: entry.
	articleOne := Article fromBibtexEntry: entry.
	
	entry := BibtexEntry new	at: 'date' put: 'the-year'; yourself.
	articleOne := Article fromBibtexEntry: entry.
	self assert: articleOne year equals: ''.

	entry := BibtexEntry new	at: 'date' put: '2004'; yourself.
	articleOne := Article fromBibtexEntry: entry.
	self assert: articleOne year equals: '2004'.

	entry := BibtexEntry new	at: 'date' put: '2004-'; yourself.
	articleOne := Article fromBibtexEntry: entry.
	self assert: articleOne year equals: '2004'.

	entry := BibtexEntry new	at: 'date' put: '2004-05-05'; yourself.
	articleOne := Article fromBibtexEntry: entry.
	self assert: articleOne year equals: '2004'.
