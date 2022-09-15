tests
testFromCran
	| importer |
	importer := BibtexImporter new.
	importer
		readFrom: FileSystem disk workingDirectory / 'textBibtexFromCran.bib'
		ignoringDuplicatesIn: Set new.
	self assert: importer articles size equals: 85.
	self assert: importer articles first bibtexEntry notNil.
	self assert: importer importReport importErrors isEmpty