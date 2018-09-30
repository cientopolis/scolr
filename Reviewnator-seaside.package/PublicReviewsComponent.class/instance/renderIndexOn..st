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
								accessCode: each accessCode.
							self renderReviewSummaryFor: repo on: html ] ] ]