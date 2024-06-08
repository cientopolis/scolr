callbacks
editCredentials: aReviewnatorAccessCredential
	(self call: (AccessCredentialEditorComponent credential: aReviewnatorAccessCredential))
		ifNotNil: [ self save ]