rendering-selectors
renderSortingCriteriaOn: html
	html
		div: [ html
				strong: 'Sort :';
				text: ' by year ('.
			html anchor
				callback: [ sortBlock := self sortUpByYearBlock ];
				with: 'up'.
			html text: '/'.
			html anchor
				callback: [ sortBlock := self sortDownByYearBlock ];
				with: 'down'.
			html text: '), or by title ('.
			html anchor
				callback: [ sortBlock := self sortUpByTitleBlock ];
				with: 'up'.
			html text: '/'.
			html anchor
				callback: [ sortBlock := self sortDownByTitleBlock ];
				with: 'down'.
			html text: '), or by authors ('.
			html anchor
				callback: [ sortBlock := self sortUpByAuthorBlock ];
				with: 'up'.
			html text: '/'.
			html anchor
				callback: [ sortBlock := self sortDownByAuthorBlock ];
				with: 'down'.
			html text: ')' ]