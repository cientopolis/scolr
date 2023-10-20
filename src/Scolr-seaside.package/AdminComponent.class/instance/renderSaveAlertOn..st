rendering
renderSaveAlertOn: html

	dirty ifFalse: [ ^ self ].
	html tbsAlert beWarning with: [ 
		html small: [ 
			html strong: 'You made changes - do not foget to save them.' ] ]