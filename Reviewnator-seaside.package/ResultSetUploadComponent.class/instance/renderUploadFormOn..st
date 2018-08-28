rendering
renderUploadFormOn: html
	html paragraph: 'This form will add a list of articles to your review. '.
	html tbsForm
		multipart;
		with: [ html
				tbsFormGroup: [ html label
						for: 'file';
						with: 'File'.
					html break.
					html
						small: [ html
								text: 'Only CSV files (comma separated values) are accepted.';
								break;
								text: 'The first row of the file should include the following mandatory column headers: ';
								break;
								strong: 'authors, title, abstract, year';
								break;
								text: 'Other column headers will be ignored' ].
					html
						break;
						break.
					html fileUpload
						callback: [ :value | self receiveFile: value ];
						id: 'file' ].
			html
				tbsFormGroup: [ html label
						for: 'database';
						with: 'Database: '.
					html break.
					html textInput
						id: 'database';
						size: 80;
						on: #database of: self;
						placeholder: 'Which bibliographic database does this list come from?' ].
			html
				tbsFormGroup: [ html label
						with: 'Search string: ';
						for: 'searchString'.
					html break.
					html textArea
						id: 'searchString';
						columns: 80;
						rows: 4;
						on: #searchString of: self;
						placeholder: 'What was the search string/query used to obtain the articles in this list?' ].
			html
				tbsFormGroup: [ html label
						with: 'Comments: ';
						for: 'comments'.
					html break.
					html textArea
						id: 'comments';
						columns: 80;
						rows: 4;
						on: #comment of: self;
						placeholder: 'Any additional comments regarding this list of articles?' ].
			html tbsButton
				callback: [ self accept ];
				with: 'Submit'.
			html space.
			html tbsButton
				callback: [ self cancel ];
				with: 'Cancel' ]