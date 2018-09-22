private
testImportFromScopusWithMissingHeaders
	| importer |
	importer := CSVImporter new.
	importer
		readFrom: '/Users/alejandrofernandez/Development/reviewnator/example-files/chi-agriculture_MISSING_HEADERS.csv' asFileReference
		ignoringDuplicatesIn: Set new.
	self assert: importer resultSet isNil.
	self assert: importer importReport importErrors size equals: 1.
	self assert: importer importReport importErrors first equals: 'Important columns were missing: authors, abstract'