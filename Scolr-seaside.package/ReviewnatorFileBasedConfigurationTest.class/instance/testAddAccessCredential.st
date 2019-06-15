testing
testAddAccessCredential
	| config |
	config := ReviewnatorFileBasedConfiguration new.
	config addAccessCredential: (ReviewnatorAccessCredential accessCode: 'code' repositoryFilename: 'filename').
	self assert: config accessCredentials size equals: 2.
	self
		should: [ config addAccessCredential: (ReviewnatorAccessCredential accessCode: 'code' repositoryFilename: 'filename') ]
		raise: Error