stats
maxMemorySize
	^ maxMemorySize ifNil: [ maxMemorySize := Smalltalk vm memorySize ]