accessing
addAccessCredential: aReviewnatorAccessCredential
	(accessCredentials
		anySatisfy: [ :each | 
			each accessCode = aReviewnatorAccessCredential accessCode
				| (each repositoryFilename = aReviewnatorAccessCredential repositoryFilename) ])
		ifTrue: [ Error signal: 'Access code or repository file name have already been used.' ]
		ifFalse: [ accessCredentials add: aReviewnatorAccessCredential ]