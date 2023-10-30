rendering
renderAcceptCancelButtonsOn: html

	html submitButton
		callback: [ 
			self
				acceptChanges;
				answer ];
		value: 'Save'.
	html space.
	html cancelButton
		callback: [ self answer ];
		value: 'Cancel'.
