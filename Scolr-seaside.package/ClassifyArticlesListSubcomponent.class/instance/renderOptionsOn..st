accessing
renderOptionsOn: html
	super renderOptionsOn: html.
	html break.
	html strong: 'Export classification notes as: '.
	html anchor
		callback: [ self exportClassificationNotes ];
		with: 'Html'