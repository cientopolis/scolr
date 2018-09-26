callbacks
requestAccessCode
	| suggestedAccessCode |
	email isValidEmail
		ifFalse: [ warningMessage := '"' , email
				, '" does not seem to be a valid email'.
			^ self ].
	notes size < 100
		ifTrue: [ ^ warningMessage := 'Try harder! Only ' , notes size printString
				, ' letters about you and your review does not even qualifya as a tweet!' ].
	suggestedAccessCode := self getSuggestedAccessCode.
	credential := ReviewnatorAccessCredential
		accessCode: suggestedAccessCode
		repositoryFilename: suggestedAccessCode.
	credential requestorsEmail: email.
	credential notes: notes , ' (requested by: ' , email , ')'