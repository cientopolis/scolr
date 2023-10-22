rendering hooks
renderMainContentOn: html

	html tbsForm with: [ 
		html tbsFormGroup: [ 
			html label
				for: 'jsonPayload';
				with: 'Json payload'.
			html textArea
				on: #jsonPayload of: self;
				tbsFormControl;
				id: 'jsonPayload';
				rows: 10;
				placeholder: 'payload in json format as when using curl' ].
		html tbsButton
			callback: [ self submit ];
			with: 'Submit' ].
	html heading
		level: 3;
		with: 'Json response from GPT'.
	html preformatted:
		(STON toJsonStringPretty: (self jsonResponse ifNil: [ '' ]))