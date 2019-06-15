private
testImportFromScopusWithDuplicated
	| importer toBeDuplicates |
	importer := CSVImporter new.
	importer
		readFrom: FileSystem disk workingDirectory / 'scopusHapticAgricultireTitleCaseHeaders.csv'
		ignoringDuplicatesIn: Set new.
	toBeDuplicates := importer articles asOrderedCollection.
	toBeDuplicates removeFirst.
	importer := CSVImporter new.
	importer
		readFrom: FileSystem disk workingDirectory / 'scopusHapticAgricultireTitleCaseHeaders.csv'
		ignoringDuplicatesIn: toBeDuplicates.
	self assert: importer articles size equals: 1.
	self assert: importer importReport importErrors isEmpty.
	self assert: importer importReport importWarnings size equals: 1.
	self assert: importer importReport ignoredArticles size equals: 1