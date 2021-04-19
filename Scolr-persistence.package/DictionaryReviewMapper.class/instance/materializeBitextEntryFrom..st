materialize
materializeBitextEntryFrom: dictionary
	^ BibtexEntry
		type: (dictionary at: 'type')
		citationKey: (dictionary at: 'citationKey')
		tags:
			((dictionary at: 'tags') values
				collect:
					[ :each | BibtexTag name: (each at: 'name') value: (each at: 'value') ])