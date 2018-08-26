rendering
grantAccess
	| user mainComponent |
	self credentialsAreValid
		ifTrue: [ user := User named: self fullName.
			mainComponent := SystematicReviewFullInspectorComponent new.
			mainComponent currentUser: user.
			self show: mainComponent ]
		ifFalse: [ self reportInvalidCredentialsError ]