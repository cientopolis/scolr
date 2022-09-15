rendering
renderReportOptionsOn: html
	html strong: 'Group notes by: '.
	html text: '('.
	groupByArticle
		ifTrue: [ html text: 'article/'.
			html anchor
				callback: [ groupByArticle := false ];
				with: 'dimension' ]
		ifFalse: [ html anchor
				callback: [ groupByArticle := true ];
				with: 'article'.
			html text: '/dimension' ].
	html text: ')'.
	groupByArticle
		ifTrue: [ html break.
			html strong: 'Show: '.
			html text: ' abstracts ('.
			showAbstracts
				ifTrue: [ html text: 'yes/'.
					html anchor
						callback: [ showAbstracts := false ];
						with: 'no' ]
				ifFalse: [ html anchor
						callback: [ showAbstracts := true ];
						with: 'yes'.
					html text: '/no' ].
			html text: ')' ].
	html break