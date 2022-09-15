rendering
renderInputRequestOn: html
	self accessCodeIsValid not
		ifTrue: [ self renderAccessCodeRequestOn: html ]
		ifFalse: [ (email notNil and: [ email isValidEmail ])
				ifFalse: [ self renderEmailRequestOn: html ] ]