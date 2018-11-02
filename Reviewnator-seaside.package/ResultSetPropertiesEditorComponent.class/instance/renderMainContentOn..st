rendering
renderMainContentOn: html
	html tbsForm
		with: [ html
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
						placeholder: 'What was the search string/query used to obtain the articles in this list?' ].
			html
				tbsFormGroup: [ html label
						with: 'Notes: ';
						for: 'comments'.
					html break.
					html textArea
						id: 'comments';
						columns: 80;
						rows: 4;
						on: #comments of: self;
						placeholder: 'Any additional comments regarding this list of articles?' ].
			html tbsButton
				callback: [ self submitForm ];
				with: 'Submit'.
			html space.
			html tbsButton
				callback: [ self cancel ];
				with: 'Cancel' ]