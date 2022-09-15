private
testImportFromHeadersOkButWithEmptyMandatoryFields
	| importer |
	importer := CSVImporter new.
	importer
		readFrom: FileSystem disk workingDirectory / 'headersOkButWithEmptyMandatoryFields.csv'
		ignoringDuplicatesIn: Set new.
	self assert: importer articles size equals: 4.
	self assert: importer articles first title equals: 'missing title'.
	self assert: (importer articles at: 2) authors equals: 'missing authors'.
	self assert: (importer articles at: 3) year equals: 'missing year'.
	self assert: (importer articles at: 4) abstract equals: 'missing abstract'.
	self assert: importer importReport importErrors size equals: 0.
	self assert: importer importReport importWarnings size equals: 5  