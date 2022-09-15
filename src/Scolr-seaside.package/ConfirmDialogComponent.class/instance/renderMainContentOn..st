rendering
renderMainContentOn: html
	html paragraph: text.
	html anchor
		callback: [ self answer: true ];
		with: [ html tbsButton: 'Confirm' ].
	html space.
	html anchor
		callback: [ self answer: false ];
		with: [ html tbsButton: 'Cancel' ]