rendering
renderExportButtonsOn: html
	html
		paragraph: [ html strong: 'Export as: '.
			html anchor
				callback: [ self generateMarkdownReport ];
				with: 'Markdown'.
			html text: ' - '.
			html anchor
				callback: [ self generateHtmlReport ];
				with: 'Html'.
			html text: ' - '.
			html anchor
				callback: [ self generateLatexReport ];
				with: 'LaTeX'.
			self accessCredential notNil
				ifTrue: [ html text: ' - '.
					html anchor
						callback: [ self exportAsJSON ];
						with: 'JSON' ] ]