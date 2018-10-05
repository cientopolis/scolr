stats
collectStats
	maxMemorySize := maxMemorySize max: Smalltalk vm memorySize.
	maxConcurrentSessions := maxConcurrentSessions max: WASession allInstances size.