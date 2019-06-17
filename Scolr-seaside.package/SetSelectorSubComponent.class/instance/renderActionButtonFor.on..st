rendering
renderActionButtonFor: resultSet on: html
	html anchor
		callback: [ self editPropertiesdOf: resultSet ];
		with: [ html tbsGlyphIcon iconPencil tbsTooltip: 'Edit' ].
	html space.
	(parent selectedResulSets includes: resultSet)
		ifTrue: [ html anchor
				callback: [ parent unselectResultSet: resultSet ];
				with: [ html tbsGlyphIcon iconEyeClose tbsTooltip: 'Hide' ] ]
		ifFalse: [ html anchor
				callback: [ parent selectResultSet: resultSet ];
				with: [ html tbsGlyphIcon iconEyeOpen tbsTooltip: 'Show'] ].
	resultSet countOfReviews > 0
		ifFalse: [ html space.
			html anchor
				callback: [ self removeResultSet: resultSet ];
				with: [ html tbsGlyphIcon iconTrash tbsTooltip: 'Remove' ] ]