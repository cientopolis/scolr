running
setUpFile: selector extension: ext
	| stream file |
	file := FileSystem disk workingDirectory / (selector asString , ext).
	file exists
		ifTrue: [ file delete ].
	stream := file writeStream.
	[ stream nextPutAll: (self perform: selector) utf8Decoded ]
		ensure: [ stream close ]