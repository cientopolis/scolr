rendering-selectors
renderFiltersOn: html
	html text: 'Hide included ('.
	(activeHidingFilters includes: self class includedFilter)
		ifTrue: [ html anchor
				callback: [ activeHidingFilters remove: self class includedFilter ];
				with: 'no' ]
		ifFalse: [ html anchor
				callback: [ activeHidingFilters add: self class includedFilter ];
				with: 'yes' ].
	html text: '), or hide excluded ('.
	(activeHidingFilters includes: self class excludedFilter)
		ifTrue: [ html anchor
				callback: [ activeHidingFilters remove: self class excludedFilter ];
				with: 'no' ]
		ifFalse: [ html anchor
				callback: [ activeHidingFilters add: self class excludedFilter ];
				with: 'yes' ].
	html text: '), or hide already classified by me ('.
	(activeHidingFilters includes: self class alreadyClassifiedFilter)
		ifTrue: [ html anchor
				callback: [ activeHidingFilters remove: self class alreadyClassifiedFilter ];
				with: 'no' ]
		ifFalse: [ html anchor
				callback: [ activeHidingFilters add: self class alreadyClassifiedFilter ];
				with: 'yes' ].
	html text: ')'.
	html break