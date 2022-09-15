callbacks
importerForFile: aFile
	((aFile contentType matches: WAMimeType textCsv)
		or: [ aFile fileName asLowercase endsWith: 'csv' ])
		ifTrue: [ ^ CSVImporter new ].
	(aFile fileName asLowercase endsWith: 'bib')
		ifTrue: [ ^ BibtexImporter new ].
	^ nil