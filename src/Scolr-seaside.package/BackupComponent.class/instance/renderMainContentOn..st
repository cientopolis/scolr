rendering hooks
renderMainContentOn: html

	html heading
		level: 3;
		with: 'Available backup files'.
	html paragraph:
		'This lis includes all .tar files in the working directory so you can download them. To make a backup you need access to the server'.
	html unorderedList: [ 
		self backupFiles do: [ :each | 
			html listItem: [ 
				html text:
					each basename , ' - ' , each modificationTime printString, ' ', each mimeTypes printString.
				html space.
				html anchor
					callback: [ self download: each ];
					with: [ html tbsGlyphIcon iconDownloadAlt ] ] ] ]