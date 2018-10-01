rendering-selectors
renderFiltersOn: html
	html text: 'Hide included ('.
	(activeHidingFilters includes: ArticleListSubComponent includedFilter)
		ifTrue: [ html anchor
				callback: [ activeHidingFilters remove: ArticleListSubComponent  includedFilter ];
				with: 'no' ]
		ifFalse: [ html anchor
				callback: [ activeHidingFilters add: ArticleListSubComponent includedFilter ];
				with: 'yes' ].
	html text: '), or hide excluded ('.
	(activeHidingFilters includes: ArticleListSubComponent excludedFilter)
		ifTrue: [ html anchor
				callback: [ activeHidingFilters remove: ArticleListSubComponent excludedFilter ];
				with: 'no' ]
		ifFalse: [ html anchor
				callback: [ activeHidingFilters add: ArticleListSubComponent excludedFilter ];
				with: 'yes' ].
	html text: '), or hide already classified by me ('.
	(activeHidingFilters includes: ArticleListSubComponent alreadyClassifiedFilter)
		ifTrue: [ html anchor
				callback: [ activeHidingFilters remove: ArticleListSubComponent alreadyClassifiedFilter ];
				with: 'no' ]
		ifFalse: [ html anchor
				callback: [ activeHidingFilters add: ArticleListSubComponent alreadyClassifiedFilter ];
				with: 'yes' ].
	html text: ')'.
	html break