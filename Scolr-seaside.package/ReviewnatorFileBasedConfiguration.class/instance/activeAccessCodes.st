accessing
activeAccessCodes
	^ accessCredentials select: [ :each | each isActive ] thenCollect: [ :each | each accessCode ]