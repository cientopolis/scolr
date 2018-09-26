private
credentialsAreValid
	accessCode isEmpty | fullName isEmpty
		ifTrue: [ ^ false ].
	accessCredential := self configuration accessCredentials
		detect: [ :each | each accessCode = accessCode ]
		ifNone: [ nil ].
	^ accessCredential notNil and: [ accessCredential isActive ]