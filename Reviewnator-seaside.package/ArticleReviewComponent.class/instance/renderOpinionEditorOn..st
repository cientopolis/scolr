rendering
renderOpinionEditorOn: html
	html heading
		level: 3;
		with: 'Reviews'.
	self renderCommentsTableOn: html.
	html break.
	html submitButton
		callback: [ 
					self
						acceptChanges;
						answer ];
		value: 'Save new (replace old)'.
	html space.
	html cancelButton
		callback: [ self answer ];
		value: 'Cancel (return)'