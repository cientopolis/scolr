rendering
renderStatusFilterMenuOn: html
	html div tbsPullRight
		tbsDropdown: [ html tbsDropdownAnchor
				with: [ html tbsGlyphIcon iconFilter.
					html tbsCaret ].
			html
				tbsDropdownMenu: [ html
						tbsDropdownMenuItem: [ html anchor
								callback: [ hideIncluded := hideIncluded not ];
								with: [ html text: 'Hide included'.
									hideIncluded
										ifTrue: [ html tbsGlyphIcon iconOk tbsPullRight ] ] ].
					html
						tbsDropdownMenuItem: [ html anchor
								callback: [ hideExcluded := hideExcluded not ];
								with: [ html text: 'Hide excluded'.
									hideExcluded
										ifTrue: [ html tbsGlyphIcon iconOk tbsPullRight ] ] ].
					html
						tbsDropdownMenuItem: [ html anchor
								callback: [ hideDone := hideDone not ];
								with: [ html text: 'Hide classified'.
									hideDone
										ifTrue: [ html tbsGlyphIcon iconOk tbsPullRight ] ] ] ] ]