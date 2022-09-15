rendering
renderMainContentOn: html
	credential isNil
		ifTrue: [ self renderRequestFormOn: html ]
		ifFalse: [ self renderCredentialOn: html ]