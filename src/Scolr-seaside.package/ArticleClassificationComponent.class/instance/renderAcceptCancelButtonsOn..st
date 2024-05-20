rendering
renderAcceptCancelButtonsOn: html

	super renderAcceptCancelButtonsOn: html.

	self accessCredential gptEnabled ifFalse: [ ^ self ].
	opinionToEdit undecided ifFalse: [ ^ self ].

	html space.
	html submitButton
		callback: [ self askGpt ];
		style: 'color: red;';
		value: 'Ask an AI'