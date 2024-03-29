materialize
materializeArticleFrom: aDictionary
	| tagAssignments |
	tagAssignments := aDictionary
		at: #tagAssignments
		ifPresent: [ :array | 
			(array collect: [ :each | self materializeTagAssignmentFrom: each ])
				asSet ]
		ifAbsent: [ self materializeLegacyTagAssingmnetsFrom: aDictionary ].
	^ Article new
		authors: (aDictionary at: #authors);
		title: (aDictionary at: #title);
		year: (aDictionary at: #year);
		abstract: (aDictionary at: #abstract);
		documentType: (aDictionary at: #documentType);
		classifications:
			((aDictionary at: #classifications)
				collect: [ :each | self materializeClassificationFrom: each ])
				asOrderedCollection;
		reviews:
			((aDictionary at: #reviews)
				collect: [ :each | self materializeReviewFrom: each ])
				asOrderedCollection;
		tagAssignments: tagAssignments;
		bibtexEntry:
			(aDictionary
				at: #bibtexEntry
				ifPresent:
					[ :it | it ifNil: [ nil ] ifNotNil: [ self materializeBitextEntryFrom: it ] ]
				ifAbsent: nil);
		yourself