private
testImportFromScopusOnlyMandatoryHeadersFrenchUTF8Text
	| importer |
	importer := CSVImporter new.
	importer readFrom: FileSystem disk workingDirectory / 'scopusOnlyMandatoryHeadersFrenchUTF8Text.csv' ignoringDuplicatesIn: Set new.
	self assert: importer articles size equals: 1.
	self assert: importer importReport importErrors isEmpty.
	self assert: importer importReport importWarnings isEmpty