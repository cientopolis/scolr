rendering
renderActionButtonFor: resultSet on: html
	| menu |
	menu := [ html
		tbsDropdownMenuItem: [ html anchor
				callback: [ self editPropertiesdOf: resultSet ];
				with: 'Edit' ].
	(parent selectedResulSets includes: resultSet)
		ifTrue: [ html
				tbsDropdownMenuItem: [ html anchor
						callback: [ parent unselectResultSet: resultSet ];
						with: 'Hide' ] ]
		ifFalse: [ html
				tbsDropdownMenuItem: [ html anchor
						callback: [ parent selectResultSet: resultSet ];
						with: 'Show' ] ].
	resultSet countOfReviews > 0
		ifFalse: [ html
				tbsDropdownMenuItem: [ html anchor
						callback: [ self removeResultSet: resultSet ];
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