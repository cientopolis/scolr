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
						with: [ html strong: '1. Classify' ] ].
			tab := html tbsNavItem.
			selectedActivity = #review
				ifTrue: [ tab beActive ].
			tab
				with: [ html anchor
						callback: [ selectedActivity := #review ];
						with: [ html strong: '2. Review' ] ] .
					tab := html tbsNavItem.
			selectedActivity = #report
				ifTrue: [ tab beActive ].
			tab
				with: [ html anchor
						callback: [ selectedActivity := #report ];
						with: [ html strong: '3. Report' ] ]]