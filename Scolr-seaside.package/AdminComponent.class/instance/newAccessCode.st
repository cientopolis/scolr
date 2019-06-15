callbacks
newAccessCode
	| newCode |
	newCode := cachedConfiguration newSuggestedAccessCode.
	cachedConfiguration
		addAccessCredential: (ReviewnatorAccessCredential accessCode: newCode repositoryFilename: newCode).
	dirty := true