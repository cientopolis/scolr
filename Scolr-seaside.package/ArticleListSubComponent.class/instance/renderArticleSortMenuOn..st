rendering
renderArticleSortMenuOn: html
	html div tbsPullRight
		tbsDropdown: [ html tbsDropdownAnchor
				with: [ html tbsGlyphIcon iconSort.
					html tbsCaret ].
			html
				tbsDropdownMenu: [ html
						tbsDropdownMenuItem: [ html anchor
								callback: [ sortSelector := #authors ];
								with: [ html text: 'By Author '.
									sortSelector = #authors
										ifTrue: [ html tbsGlyphIcon iconOk tbsPullRight ] ] ].
					html
						tbsDropdownMenuItem: [ html anchor
								callback: [ sortSelector := #year ];
								with: [ html text: 'By Year '.
									sortSelector = #year
										ifTrue: [ html tbsGlyphIcon iconOk tbsPullRight ] ] ].
					html
						tbsDropdownMenuItem: [ html anchor
								callback: [ sortSelector := #title ];
								with: [ html text: 'By Title '.
									sortSelector = #title
										ifTrue: [ html tbsGlyphIcon iconOk tbsPullRight ] ] ].
					html tbsDivider.
					html
						tbsDropdownMenuItem: [ html anchor
								callback: [ sortAscending := true ];
								with: [ html text: 'Up '.
									sortAscending
										ifTrue: [ html tbsGlyphIcon iconOk tbsPullRight ] ] ].
					html
						tbsDropdownMenuItem: [ html anchor
								callback: [ sortAscending := false ];
								with: [ html text: 'Down '.
									sortAscending not
										ifTrue: [ html tbsGlyphIcon iconOk tbsPullRight ] ] ] ] ]