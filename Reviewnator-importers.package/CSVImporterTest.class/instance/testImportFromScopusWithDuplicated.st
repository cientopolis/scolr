private
testImportFromScopusWithDuplicated
	| importer  toBeDuplicates |
	importer := CSVImporter new.
	importer
		readFrom: '/Users/alejandrofernandez/Development/reviewnator/example-files/scopus-haptics-agriculture_TITLE_CASE_HEADERS.csv' asFileReference
		ignoringDuplicatesIn: Set new.
	toBeDuplicates := importer articles asOrderedCollection.
	toBeDuplicates removeFirst. 
	importer := CSVImporter new.
	importer
		readFrom: '/Users/alejandrofernandez/Development/reviewnator/example-files/scopus-haptics-agriculture_TITLE_CASE_HEADERS.csv' asFileReference
		ignoringDuplicatesIn: toBeDuplicates .
	self assert: importer articles size equals: 1.
	self assert: importer importReport importErrors isEmpty.
	self assert: importer importReport importWarnings size equals: 1.
	self assert: importer importReport ignoredArticles size equals: 1.
