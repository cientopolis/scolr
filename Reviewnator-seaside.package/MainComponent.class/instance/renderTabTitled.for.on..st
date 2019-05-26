rendering
renderTabTitled: label for: selector on: html
	| tab |
	tab := html tbsNavItem.
	selectedActivity = selector
		ifTrue: [ tab beActive ].
	tab
		with: [ html anchor
				callback: [ selectedActivity := selector ];
				with: [ html strong: label ] ]