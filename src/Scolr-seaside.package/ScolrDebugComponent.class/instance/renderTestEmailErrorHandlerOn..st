rendering
renderTestEmailErrorHandlerOn: html

	html paragraph: [ 
		html strong:
			'Force an error to check that email error handler is configured and working'.
		html space.
		html anchor
			callback: [ 100 / 0 ];
			with: '[Close your eyes and do it]' ]