rendering
renderActionButtonFor: each on: html
	| menu |
	menu := [ each isActive not | (each isActive & each isAdmin not)
		ifTrue: [ html
				tbsDropdownMenuItem: [ html anchor
						callback: [ each toggleActive.
							self save ];
						with: 'Toggle active' ] ].
	(self isOnlyAdmin: each)
		ifFalse: [ html
				tbsDropdownMenuItem: [ html anchor
						callback: [ each toggleAdmin.
							self save ];
						with: 'Toggle admin' ] ].
	html
		tbsDropdownMenuItem: [ html anchor
				callback: [ each editCredentials: each ];
				with: 'Edit' ].
	each isAdmin not
		ifTrue: [ html tbsDivider.
			html
				tbsDropdownMenuItem: [ html anchor
						callback: [ self configuration removeAccessCredential: each.
							self save ];
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