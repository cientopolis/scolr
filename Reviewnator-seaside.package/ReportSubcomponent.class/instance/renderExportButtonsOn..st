rendering
renderExportButtonsOn: html
	html
		paragraph: [ html text: 'Export this report as: '.
			html anchor
				callback: [ self  generateMarkdownReport ];
				with: [ html tbsButton
						beExtraSmall;
						with: 'Markdown' ].
			html space.
			html anchor
				callback: [ self exportAsJSON ];
				with: [ html tbsButton
						beExtraSmall;
						with: 'JSON' ] ]