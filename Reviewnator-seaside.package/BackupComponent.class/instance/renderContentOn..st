rendering
renderContentOn: html

	self renderFilesInBackupFolderOn: html.
	html form: 
			[html
				strong: 'Desired name for the backup file: ';
				break.
			(html textInput)
				on: #backupFilename of: Preferences singleton.
			 html	break.
			(html submitButton)
				callback: [self accept];
				value: 'Backup'.
			(html cancelButton)
				callback: [self cancel];
				value: 'Cancel']