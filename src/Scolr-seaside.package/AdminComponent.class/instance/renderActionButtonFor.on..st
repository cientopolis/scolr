rendering
renderActionButtonFor: each on: html
	| menu |
	menu := [ each isActive not | (each isActive & each isAdmin not)
		ifTrue: [ html
				tbsDropdownMenuItem: [ html anchor
						callback: [ self toggleActiveFor: each ];
						with: 'Toggle active' ] ].
	(self isOnlyAdmin: each)
		ifFalse: [ html
				tbsDropdownMenuItem: [ html anchor
						callback: [ self toggleAdminFor: each ];
						with: 'Toggle admin' ] ].
	each accessCode = accessCredential accessCode
		ifFalse: [ html
				tbsDropdownMenuItem: [ html anchor
						callback: [ self editCredentials: each ];
						with: 'Edit' ] ].
	html
		tbsDropdownMenuItem: [ html anchor
				callback: [ self togglePrivateFor: each ];
				with: 'Toggle private' ].
	html
		tbsDropdownMenuItem: [ html anchor
				callback: [ self toggleGptEnabledFor: each ];
				with: 'Toggle GPT enabled' ].
	each isAdmin not
		ifTrue: [ html tbsDivider.
			html
				tbsDropdownMenuItem: [ html anchor
						callback: [ self removeAccessCredential: each ];
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