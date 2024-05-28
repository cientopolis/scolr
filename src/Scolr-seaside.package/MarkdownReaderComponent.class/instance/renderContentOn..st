rendering
renderContentOn: html

	html label with: [ 
		html checkbox
			id: 'toggle-checkbox';
			onClick: 'updateContent();';
			with: 'Show raw Markdown' ].
	html span id: 'output'.
	html span
		id: 'hidden-text';
		style: 'display:none;';
		with: source.