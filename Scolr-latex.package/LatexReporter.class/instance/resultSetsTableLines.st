redering
resultSetsTableLines
	| stream |
	stream := String new writeStream.
	coReview resultSets
		do: [ :each | 
			stream
				nextPutAll: '\hline';
				cr;
				nextPutAll: each database;
				nextPutAll: ' & ';
				nextPutAll: each searchString;
				nextPutAll: ' & ';
				nextPutAll: each articles size printString;
				nextPutAll: ' \\' ].
	^ stream contents