reporting
reportMissingColumnsTo: anImportReport
	| missing |
	missing := self columnToSelectorMap keys asOrderedCollection.
	missing removeAllFoundIn: columnLabels.
	missing
		ifNotEmpty: [ anImportReport reportUnrecoverableFailure: (missing inject: 'There were missing columns: ' into: [ :sub :label | sub , ', ' , label ]) ]