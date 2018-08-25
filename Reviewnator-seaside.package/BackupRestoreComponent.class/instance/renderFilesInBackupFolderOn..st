rendering
renderFilesInBackupFolderOn: html
	html paragraph: [ html strong: 'Files in backup directory (' , Preferences singleton backupFolder fullName , ')' ].
	self backupFolderContents notEmpty
		ifTrue: [ html orderedList with: [ self backupFolderContents do: [ :each | html listItem: each basename ] ] ]
		ifFalse: [ html paragraph: 'folder is empty' ]