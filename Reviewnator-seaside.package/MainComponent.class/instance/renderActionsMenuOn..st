rendering menu
renderActionsMenuOn: html
	| menu |
	self isAdmin
		ifTrue: [ menu := [ html
				tbsDropdownMenuItem: [ html anchor
						callback: [ self editGlobalConfiguration ];
						with: 'Config' ].
			html
				tbsDropdownMenuItem: [ html anchor
						callback: [ self resetDemo ];
						with: 'Reset demo' ] ].
			html tbsButtonGroup
				with: [ html tbsDropdownButton
						beNavbarButton;
						beWarning;
						beDefault;
						with: [ html
								text: 'Admin';
								tbsCaret ].
					html
						tbsDropdownMenu: menu;
						space ] ]