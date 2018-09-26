callbacks
newAccessCode
	| newCode |
	newCode := 'code' , 100 atRandom printString.
	self configuration
		addAccessCredential: (ReviewnatorAccessCredential accessCode: newCode repositoryFilename: newCode). 