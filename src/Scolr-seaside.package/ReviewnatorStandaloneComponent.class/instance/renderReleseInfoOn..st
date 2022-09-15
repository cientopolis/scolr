rendering
renderReleseInfoOn: html
	html horizontalRule.
	html
		paragraph: [ html
				small: [ html text: 'Powered by '.
					html anchor
						url: 'http://www.lifia.info.unlp.edu.ar/';
						with: 'LIFIA'.
					html text: ' and '.
					html anchor
						url: 'http://www.cientopolis.org/';
						with: 'Cientopolis' ] ]