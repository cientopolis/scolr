reading
read
	| inStream reader |
	inStream := filename asFileReference readStream.
	reader := NeoCSVReader on: inStream.
	getters := reader readHeader collect: [ :each | each asCamelCase asValidSelector ].
	reader select: [ :each | true ] thenDo: [ :each | self importRow: each ]