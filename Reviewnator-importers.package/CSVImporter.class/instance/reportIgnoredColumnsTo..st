reporting
reportIgnoredColumnsTo: anImportReport
	| ignored stream |
	ignored := columnLabels asOrderedCollection.
	ignored removeAllFoundIn: self columnToSelectorMap keys asOrderedCollection.
	ignored
		ifNotEmpty: [ stream := String new writeStream.
			stream nextPutAll: 'Some columns were ignored: '.
			ignored do: [ :label | stream nextPutAll: label ] separatedBy: [ stream nextPutAll: ', ' ].
			anImportReport reportWarning: stream contents ]