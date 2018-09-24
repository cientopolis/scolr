rendering
renderActivitySelectorTabsOn: html
	| tab |
	html tbsNav
		beTabs;
		with: [ tab := html tbsNavItem.
			selectedActivity = #classify
				ifTrue: [ tab beActive ].
			tab
				with: [ html anchor
						callback: [ selectedActivity := #classify ];
						with: 'Classify' ].
			tab := html tbsNavItem.
			selectedActivity = #review
				ifTrue: [ tab beActive ].
			tab
				with: [ html anchor
						callback: [ selectedActivity := #review ];
						with: 'Review' ] ]