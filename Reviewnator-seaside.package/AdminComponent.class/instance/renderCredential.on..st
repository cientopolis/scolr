rendering
renderCredential: each on: html
	html
		tableRow: [ html tableData with: each accessCode.
			html tableData with: each repositoryFilename, '.json'.
			html tableData with: each notes.
			html tableData with: each articleLimit printString.
			html tableData with: each modificationDate printString.
			html tableData with: each isActive printString.
			html tableData with: each isAdmin printString.
			html tableData with: each isPrivate printString.
			html tableData with: [ self renderActionButtonFor: each on: html ] ]