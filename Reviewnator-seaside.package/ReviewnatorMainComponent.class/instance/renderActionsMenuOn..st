rendering menu
renderActionsMenuOn: html
	| menu |
	menu := [ html
		tbsDropdownMenuItem: [ html anchor
				callback: [ self uploadResultSet ];
				with: 'Upload' ].
	html
		tbsDropdownMenuItem: [ html anchor
				callback: [ self reportsPage ];
				with: 'Reports' ] ].
	html tbsButtonGroup
		with: [ html tbsDropdownButton
				beNavbarButton;
				beDefault;
				with: [ html
						text: 'Actions';
						tbsCaret ].
			html
				tbsDropdownMenu: menu;
				space ]