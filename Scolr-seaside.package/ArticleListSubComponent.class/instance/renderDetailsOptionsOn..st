rendering-selectors
renderDetailsOptionsOn: html
	html
		strong: 'Show: ';
		text: ' classification comments  ('.
	showClassificationComments
		ifTrue: [ html anchor
				callback: [ showClassificationComments := false ];
				with: 'no' ]
		ifFalse: [ html anchor
				callback: [ showClassificationComments := true ];
				with: 'yes' ].
	html text: ')'