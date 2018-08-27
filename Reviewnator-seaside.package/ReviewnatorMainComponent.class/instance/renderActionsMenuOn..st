rendering menu
renderActionsMenuOn: html
	| menu |
	menu := [ html
		tbsDropdownMenuItem: [ html anchor
				callback: [ self uploadResultSet ];
				with: 'Upload list' ].
	html
		tbsDropdownMenuItem: [ html anchor
				callback: [ self dumpToCsv ];
				with: 'Dump to CSV' ].
	self isAdmin
		ifTrue: [ html
				tbsDropdownMenuItem: [ html anchor
						callback: [ self editGlobalConfiguration ];
						with: 'Admin' ] ] ].
	html tbsButtonGroup
		with: [ html tbsDropdownButton
				beNavbarButton;
				beDefault;
				with: [ html
						text: 'File';
						tbsCaret ].
			html
				tbsDropdownMenu: menu;
				space ]