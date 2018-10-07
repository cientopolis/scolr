stats
collectStats
	MaxMemory := (MaxMemory ifNil: [ 0 ]) max: Smalltalk vm memorySize.
	MaxSessions := (MaxSessions ifNil: [ 0 ]) max: self application sessions size