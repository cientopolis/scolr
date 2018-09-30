stats
maxConcurrentSessions
	^ maxConcurrentSessions ifNil: [ maxConcurrentSessions := WASession allInstances size ]