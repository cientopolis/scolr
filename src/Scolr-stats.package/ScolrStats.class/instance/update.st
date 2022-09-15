api
update
	stats := self activeAccessCredentials
		collect: [ :credential | 
			self
				visitReview: (self repositoryNamed: credential repositoryFilename) coReview
				withAccessCode: credential repositoryFilename
				createdOn: credential modificationDate
				requestedBy: credential requestorsEmail ]