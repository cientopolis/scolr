rendering
renderAcceptCancelButtonsOn: html

	html submitButton
		callback: [ 
			self
				acceptChanges;
				answer ];
		value: 'Save new (replace old)'.
	html space.
	html cancelButton
		callback: [ self answer ];
		value: 'Cancel (return)'.
