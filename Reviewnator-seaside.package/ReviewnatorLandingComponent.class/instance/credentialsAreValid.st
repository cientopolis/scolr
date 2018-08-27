private
credentialsAreValid
	accessCode isEmpty | fullName isEmpty
		ifTrue: [ ^ false ].
	^ (configuration activeAccessCodes includes: accessCode) | (accessCode = configuration adminAccessCode)