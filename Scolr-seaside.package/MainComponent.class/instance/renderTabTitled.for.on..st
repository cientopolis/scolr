rendering
renderTabTitled: label for: aClass on: html
	| tab |
	tab := html tbsNavItem.
	selectedActivitySubcomponent class = aClass
		ifTrue: [ tab beActive ].
	tab
		with: [ html anchor
				callback: [ selectedActivitySubcomponent := aClass parent: self ];
				with: [ html strong: label ] ]