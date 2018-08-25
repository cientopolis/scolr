rendering
renderContentOn: html

	(html form)
		multipart;
		with: 
				[html fileUpload callback: [:value | self receiveFile: value].
				html break.
				html strong: 'Database: '.
				html break.
				(html textInput)
					size: 80;
					on: #database of: self.
				html break.
				html strong: 'Search string: '.
				html break.
				(html textArea)
					columns: 80;
					rows: 4;
					on: #searchString of: self.
				html break.
				html strong: 'Comments: '.
				html break.
				(html textArea)
					columns: 80;
					rows: 4;
					on: #comment of: self.
				html break.
				(html submitButton)
					callback: 
							[resultSet
								database: database;
								searchString: searchString;
								comments: comment.
							self answer];
					with: 'Submit'.
				(html cancelButton)
					callback: [self answer];
					with: 'Cancel']