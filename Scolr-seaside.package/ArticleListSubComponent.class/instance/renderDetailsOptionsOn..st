rendering-selectors
renderDetailsOptionsOn: html
	html
		div: [ html
				strong: 'Show: ';
				text: ' classification comments  ('.
			showClassificationComments
				ifTrue: [ html text: 'yes/'.
					html anchor
						callback: [ showClassificationComments := false ];
						with: 'no' ]
				ifFalse: [ html anchor
						callback: [ showClassificationComments := true ];
						with: 'yes'.
					html text: '/no' ].
			html text: ')' ]