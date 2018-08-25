rendering
renderContentOn: html
	html form
		multipart;
		with: [ 
					html heading
						level: 2;
						with: [ html text: 'File upload' ].
					html
						text: article printString;
						break;
						break.
					html text: 'Desired filename on server? (suggested authorname-year-HHMM.ext to avoid conflicting names)'.
					html break.
					html textInput
						size: 80;
						on: #desiredFilename of: self.
					html break.
					html fileUpload callback: [ :value | self receiveFile: value ].
					html
						break;
						break.
					html submitButton
						callback: [ 
									article uploadedFilename: self desiredFilename.
									self answer ];
						with: 'Send File'.
					html cancelButton
						callback: [ self answer ];
						with: 'Cancel' ]