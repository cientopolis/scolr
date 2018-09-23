private
testImportFromScopusWithMissingHeaders
	| importer |
	importer := CSVImporter new.
	importer readFrom: FileSystem disk workingDirectory / 'chiAgricultureMissingHeaders.csv' ignoringDuplicatesIn: Set new.
	self assert: importer resultSet isNil.
	self assert: importer importReport importErrors size equals: 1.
	self assert: importer importReport importErrors first equals: 'Important columns were missing: authors, abstract'