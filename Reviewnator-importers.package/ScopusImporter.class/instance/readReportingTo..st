reading
readReportingTo: anImportReport
	| inStream reader |
	inStream := filename asFileReference readStream.
	reader := NeoCSVReader on: inStream.
	columnLabels := reader readHeader collect: [ :each | each asLowercase ].
	self reportMissingColumnsTo: anImportReport.
	self reportIgnoredColumnsTo: anImportReport.
	anImportReport failed
		ifFalse: [ reader do: [ :each | self importRow: each reportingTo: anImportReport ] ]
		ifTrue: [ resultSet := nil ]