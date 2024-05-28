rendering
renderContentOn: html

	html tbsContainer: [ 
		error ifNotNil: [ 
			html tbsAlert
				beError;
				with: error ].

		warn ifNotNil: [ 
			html tbsAlert
				beWarning;
				with: warn ].

		info ifNotNil: [ 
			html tbsAlert
				beInfo;
				with: info ].


		html paragraph: [ 
			html checkbox
				id: 'toggle-checkbox';
				onClick: 'updateContent();';
				with: ' Show raw Markdown' ].
		html span id: 'output'.
		html span
			id: 'hidden-text';
			style: 'display:none;';
			with: source ]