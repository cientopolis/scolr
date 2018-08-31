reading
readFrom: aFileReference ignoringDuplicatesIn: articles
	| reader |
	importReport := ImportReport new.
	reader := NeoCSVReader on: aFileReference readStream.
	columnLabels := reader readHeader collect: [ :each | each asLowercase ].
	self reportMissingColumnsTo: importReport.
	self reportIgnoredColumnsTo: importReport.
	importReport failed
		ifFalse: [ [ reader do: [ :each | self importRow: each ignoreDuplicatesIn: articles ].
			resultSet articles size > 50
				ifTrue: [ importReport reportWarning: 'Found over 50 articles. Are you sure you will be able to read that many? Be sure before importing the list' ] ]
				on: Error
				do: [ :er | 
					importReport reportError: er description.
					resultSet := nil ] ]
		ifTrue: [ resultSet := nil ]