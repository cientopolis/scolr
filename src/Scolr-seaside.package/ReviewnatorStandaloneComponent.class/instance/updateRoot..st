private
updateRoot: anHtmlRoot
	super updateRoot: anHtmlRoot.
	anHtmlRoot meta
		name: 'viewport';
		content: 'width=device-width'.
	anHtmlRoot title: self windowTitle