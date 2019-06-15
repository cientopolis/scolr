running
tearDownFile: selector
	|  file |
	file := FileSystem disk workingDirectory / (selector asString , '.csv').
	file exists
		ifTrue: [ file delete ]