rendering
renderExportButtonsOn: html

	html paragraph: [ 
		html strong: 'Export this report as: '.
		html anchor
			callback: [ self generateLatexReport ];
			with: 'LaTeX'.
		self accessCredential notNil ifTrue: [ 
			html text: ' - '.
			html anchor
				callback: [ self exportAsJSON ];
				with: 'JSON' ] ]