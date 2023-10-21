accessing
responseMessage

	self isError ifTrue: [ ^ self errorMessage ].
	^ ((response at: 'choices') first at: 'message') at: 'content'