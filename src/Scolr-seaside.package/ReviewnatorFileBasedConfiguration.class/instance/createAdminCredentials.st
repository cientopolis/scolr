private
createAdminCredentials
	^ (ReviewnatorAccessCredential accessCode: 'admin' repositoryFilename: self newSuggestedAccessCode)
		toggleAdmin;
		yourself