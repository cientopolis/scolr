rendering
renderContentOn: html
	html anchor
		callback: [ self fullCsvDump ];
		with: 'Full csv dump'.
	html break.
	html anchor
		callback: [ self answer ];
		with: 'return'