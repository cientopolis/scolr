reading
readFrom: aFileReference ignoringDuplicatesIn: existingArticles
	| reader |
	importReport := ImportReport new.
	reader := NeoCSVReader on: aFileReference readStream.
	mapper := ScopusMapper withColums: (reader readHeader collect: [ :each | each asLowercase ]).
	self reportMissingColumnsTo: importReport.
	self reportIgnoredColumnsTo: importReport.
	importReport failed
		ifFalse: [ [ reader do: [ :each | self importRow: each ignoreDuplicatesIn: existingArticles ].
			articles size > 50
				ifTrue: [ importReport reportWarning: 'Found over 50 articles. Are you sure you will be able to read that many? Be sure before importing the list' ] ]
				on: Error
				do: [ :er | 
					importReport reportError: er description.
					articles := OrderedCollection new ] ]
		ifTrue: [ articles := OrderedCollection new ]