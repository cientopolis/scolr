rendering-selectors
renderFiltersOn: html
	html
		div: [ html
				strong: 'Filter: ';
				text: ' included ('.
			(activeHidingFilters
				includes: ArticleListSubComponent includedFilter)
				ifTrue: [ html text: 'yes/'.
					html anchor
						callback: [ activeHidingFilters remove: ArticleListSubComponent includedFilter ];
						with: 'no' ]
				ifFalse: [ html anchor
						callback: [ activeHidingFilters add: ArticleListSubComponent includedFilter ];
						with: 'yes'.
					html text: '/no' ].
			html text: '), or excluded ('.
			(activeHidingFilters
				includes: ArticleListSubComponent excludedFilter)
				ifTrue: [ html text: 'yes/'.
					html anchor
						callback: [ activeHidingFilters remove: ArticleListSubComponent excludedFilter ];
						with: 'no' ]
				ifFalse: [ html anchor
						callback: [ activeHidingFilters add: ArticleListSubComponent excludedFilter ];
						with: 'yes'.
					html text: '/no' ].
			html text: '), or already classified by me ('.
			(activeHidingFilters
				includes: ArticleListSubComponent alreadyClassifiedFilter)
				ifTrue: [ html text: 'yes/'.
					html anchor
						callback: [ activeHidingFilters
								remove: ArticleListSubComponent alreadyClassifiedFilter ];
						with: 'no' ]
				ifFalse: [ html anchor
						callback: [ activeHidingFilters
								add: ArticleListSubComponent alreadyClassifiedFilter ];
						with: 'yes'.
					html text: '/no' ].
			html text: ')' ]