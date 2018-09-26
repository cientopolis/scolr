rendering
renderActionButtonFor: each on: html
	| menu |
	menu := [ html
		tbsDropdownMenuItem: [ html anchor
				callback: [ each toggleActive ];
				with: 'Toggle active' ].
	html
		tbsDropdownMenuItem: [ html anchor
				callback: [ each toggleAdmin ];
				with: 'Toggle admin' ].
	html
		tbsDropdownMenuItem: [ html anchor
				callback: [ each editCredentials: each ];
				with: 'Edit' ].
	each isAdmin not
		ifTrue: [ html tbsDivider.
			html
				tbsDropdownMenuItem: [ html anchor
						callback: [ self configuration removeAccessCredential: each ];
						with: 'Remove' ] ] ].
	html
		tbsButtonGroup: [ html tbsDropdownButton
				beDefault;
				with: [ html
						text: 'Actions ';
						tbsCaret ].
			html
				tbsDropdownMenu: menu;
				space ]