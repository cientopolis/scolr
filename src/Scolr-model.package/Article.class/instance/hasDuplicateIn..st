testing
hasDuplicateIn: aCollection
	^ aCollection anySatisfy: [ :each | each mightBeADuplicateOf: self ]