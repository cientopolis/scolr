rendering
renderReportOptionsOn: html
	html
		paragraph: [ html strong: 'Options: '.
			html text: 'Include abstracts: '.
			showAbstracts
				ifTrue: [ html text: 'yes - '.
					html anchor
						callback: [ showAbstracts := false ];
						with: 'no' ]
				ifFalse: [ html anchor
						callback: [ showAbstracts := true ];
						with: 'yes'.
					html text: ' - no ' ] ]