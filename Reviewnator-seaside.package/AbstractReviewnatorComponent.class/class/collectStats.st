stats
collectStats
	maxMemorySize := Smalltalk vm memorySize.
	maxConcurrentSessions := WASession allInstances size.