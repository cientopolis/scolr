importing
readFrom: aFileReference ignoringDuplicatesIn: existingArticles
	| parser entries |
	parser := PPBibtexParser new.
	entries := parser parse: aFileReference readStream contents.
	entries isPetitFailure
		ifTrue: [ ^ importReport
				reportError:
					'Sorry, could not import that bibtex file. Does the file contain abbreviations? (look for the # symbol). Does it include comments without the % sign in front of them?' ].
	entries
		do:
			[ :entry | self add: (Article fromBibtexEntry: entry) ifNotIn: existingArticles ].
	(entries anySatisfy: [ :each | each abstract isNil ])
		ifTrue: [ importReport
				reportWarning:
					'There are missing abstracts. This will make your classification work much harder than necessary' ]