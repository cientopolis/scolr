callbacks
newAccessCode

	| newCode |
	newCode := self configuration newSuggestedAccessCode.
	self configuration addAccessCredential: (ReviewnatorAccessCredential
			 accessCode: newCode
			 repositoryFilename: newCode).
	self save