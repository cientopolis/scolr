rendering-form
renderUploadFormOn: html
	uploadedFile := nil.
	html
		paragraph: 'This form will add a list of articles to your review. '.
	html tbsForm
		multipart;
		with: [ html
				tbsFormGroup: [ html label
						for: 'file';
						with: 'File'.
					html break.
					self
						renderBibAlertOn: html;
						renderCsvAlertOn: html.
					html fileUpload
						callback: [ :value | self receiveFile: value ];
						id: 'file' ].
			html
				tbsFormGroup: [ html text: 'Ignore potential duplicates: '.
					html checkbox
						value: self ignorePotentialDuplicates;
						callback: [ :value | self ignorePotentialDuplicates: value ].
					html
						break;
						small: 'Dulicate detection is based on the title of articles already present';
						break ].
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
						with: 'Search query: ';
						for: 'searchString'.
					html break.
					html textArea
						id: 'searchString';
						columns: 80;
						rows: 4;
						on: #searchString of: self;
						placeholder:
							'What was the search string/query used to obtain the articles in this list?' ].
			html
				tbsFormGroup: [ html label
						with: 'Notes: ';
						for: 'comments'.
					html break.
					html textArea
						id: 'comments';
						columns: 80;
						rows: 4;
						on: #comment of: self;
						placeholder: 'Any additional comments regarding this list of articles?' ].
			html tbsButton
				callback: [ self submitForm ];
				with: 'Submit'.
			html space.
			html tbsButton
				callback: [ self cancel ];
				with: 'Cancel' ]