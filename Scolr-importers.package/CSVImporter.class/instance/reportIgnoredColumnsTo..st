reporting
reportIgnoredColumnsTo: anImportReport
	| ignored stream |
	ignored := mapper ignoredColumns .
	ignored
		ifNotEmpty: [ stream := String new writeStream.
			stream nextPutAll: 'Some columns were ignored: '.
			ignored do: [ :label | stream nextPutAll: label ] separatedBy: [ stream nextPutAll: ', ' ].
			anImportReport reportWarning: stream contents ]