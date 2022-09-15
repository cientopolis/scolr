stats
activeSessions
	^ (self application sessions select: [ :each | each authenticated & each expired not ]) size