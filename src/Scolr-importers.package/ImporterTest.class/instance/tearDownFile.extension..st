running
tearDownFile: selector extension: ext
	|  file |
	file := FileSystem disk workingDirectory / (selector asString , ext).
	file exists
		ifTrue: [ file delete ]