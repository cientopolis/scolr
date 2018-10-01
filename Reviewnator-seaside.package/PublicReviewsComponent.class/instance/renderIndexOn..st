rendering
renderIndexOn: html
	| repo  |
	html heading
		level: 2;
		with: 'Open review projects'.
	html
		unorderedList: [ self configuration accessCredentials
				do: [ :each | 
					each isPrivate
						ifFalse: [ repo := self repositoryClass
								fromMemoryORStorageFolderName: self configuration storageFolder
								repositoryFilename: each repositoryFilename.
							self renderReviewSummaryFor: repo on: html ] ] ]