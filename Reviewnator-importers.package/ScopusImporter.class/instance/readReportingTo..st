reading
readReportingTo: anImportReport
	| inStream reader |
	inStream := filename asFileReference readStream.
	reader := NeoCSVReader on: inStream.
	columnLabels := reader readHeader.
	self reportMissingColumnsTo: anImportReport.
	self reportIgnoredColumnsTo: anImportReport.
	anImportReport shouldFail
		ifFalse: [ reader select: [ :each | true ] thenDo: [ :each | self importRow: each reportingTo: anImportReport ] ]
		ifTrue: [ resultSet := nil ]