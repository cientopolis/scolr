rendering
renderContentOn: html

	self renderRestoreListOn: html.
	html anchor callback: [self answer]; with: 'Cancel'