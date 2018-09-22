initialize
withColums: aCollection
	aCollection with: (1 to: aCollection size) do: [ :each :index | labelsToPositionsDictionary at: each put: index ].
	missingColumns := self requiredColumns asOrderedCollection.
	missingColumns removeAllFoundIn: aCollection.
	ignoredColumns := aCollection asOrderedCollection.
	ignoredColumns removeAllFoundIn: self requiredColumns