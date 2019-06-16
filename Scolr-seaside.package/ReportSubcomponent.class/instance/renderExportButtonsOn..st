rendering
renderExportButtonsOn: html
	html
		paragraph: [ html text: 'Export this report as: '.
			html anchor
				callback: [ self generateMarkdownReport ];
				with: [ html tbsButton
						beExtraSmall;
						with: 'Markdown' ].
			html space.
			html anchor
				callback: [ self generateHtmlReport ];
				with: [ html tbsButton
						beExtraSmall;
						with: 'Html' ].
			html space.
			html anchor
				callback: [ self generateLatexReport ];
				with: [ html tbsButton
						beExtraSmall;
						with: 'LaTeX' ].
			self accessCredential notNil
				ifTrue: [ html space.
					html anchor
						callback: [ self exportAsJSON ];
						with: [ html tbsButton
								beExtraSmall;
								with: 'JSON' ] ] ]