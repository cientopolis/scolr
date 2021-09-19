private
repositoryNamed: name
	^ ChangeUnawareJsonRepository
		storageFolderName: ReviewnatorFileBasedConfiguration storageFoldername
		repositoryFilename: name