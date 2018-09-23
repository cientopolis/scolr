running
setUpFile: selector
	| stream file |
	file := FileSystem disk workingDirectory / (selector asString , '.csv').
	file exists
		ifTrue: [ file delete ].
	stream := file writeStream.
	[ stream nextPutAll: (self perform: selector) utf8Decoded ]
		ensure: [ stream close ]