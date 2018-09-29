rendering-comments
preloadFormIfPossible
	self accessCredential notNil
		ifTrue: [ editedComment offeredAccessCode: self accessCredential accessCode ].
	self currentUser notNil
		ifTrue: [ editedComment authorEmail: self currentUser username ]