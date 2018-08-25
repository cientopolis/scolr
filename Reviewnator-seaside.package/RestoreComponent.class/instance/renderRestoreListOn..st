rendering
renderRestoreListOn: html
	html orderedList
		with: [ 
			self backupFolderContents
				do: [ :each | 
					html
						listItem: [ 
							html text: each printString , ' '.
							html anchor
								callback: [ 
											fileToRestoreFrom := each.
											self accept ];
								with: '(restore this one)';
								yourself ] ] ]