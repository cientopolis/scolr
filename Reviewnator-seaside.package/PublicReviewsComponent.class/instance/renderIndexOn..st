rendering
renderIndexOn: html
	| repo coReview |
	html heading
		level: 2;
		with: 'Explore open reviews'.
	html
		unorderedList: [ self configuration accessCredentials
				do: [ :each | 
					each isPrivate
						ifFalse: [ repo := self repositoryClass
								fromMemoryORStorageFolderName: self configuration storageFolder
								accessCode: each accessCode.
							coReview := repo coReview.
							self renderReviewSummaryFor: coReview on: html ] ] ]