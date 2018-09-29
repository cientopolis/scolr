private
testImportFromEmptyElementInHeadersRow
	| importer |
	importer := CSVImporter new.
	importer readFrom: FileSystem disk workingDirectory / 'emptyElementInHeadersRow.csv' ignoringDuplicatesIn: Set new.
	self assert: importer articles size equals: 0.
	self assert: importer importReport importErrors notEmpty