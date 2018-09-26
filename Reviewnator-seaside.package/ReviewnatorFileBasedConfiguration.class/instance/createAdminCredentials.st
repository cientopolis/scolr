private
createAdminCredentials
	^ (ReviewnatorAccessCredential accessCode: 'admin' repositoryFilename: 'admin-repo')
		isAdmin: true;
		yourself