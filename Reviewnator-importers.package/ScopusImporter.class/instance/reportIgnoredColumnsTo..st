reporting
reportIgnoredColumnsTo: anImportReport
	| ignored |
	ignored := columnLabels asOrderedCollection.
	ignored removeAllFoundIn: self columnToSelectorMap keys asOrderedCollection.
	ignored
		ifNotEmpty: [ anImportReport reportError: (ignored inject: 'Some columns were ignored: ' into: [ :sub :label | sub , ', ' , label ]) ]