accessing
newOrExistingUserNamed: name

	^users detect: [:each | each username asLowercase = name asLowercase] ifNone: [users add: (User named: name asLowercase)]