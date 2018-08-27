reporting
reportMissingColumnsTo: anImportReport
	| missing stream |
	missing := self columnToSelectorMap keys asOrderedCollection.
	missing removeAllFoundIn: columnLabels.
	missing
		ifNotEmpty: [ stream := String new writeStream.
			stream nextPutAll: 'Important columns were missing: '.
			missing do: [ :label | stream nextPutAll: label ] separatedBy: [ stream nextPutAll: ', ' ].
			anImportReport reportError: stream contents ]