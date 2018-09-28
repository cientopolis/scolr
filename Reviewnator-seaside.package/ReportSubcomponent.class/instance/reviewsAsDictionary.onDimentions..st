rendering
reviewsAsDictionary: article onDimentions: dimensions
	| dict |
	dict := Dictionary new.
	dimensions do: [ :dim | dict at: dim put: SortedCollection new ].
	article reviews
		do:
			[ :rev | rev dimensionSpecificComments keysAndValuesDo: [ :key :value | (dict at: key) add: rev author username -> value ] ].
	^ dict