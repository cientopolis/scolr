rendering
renderMainContentOn: html
	html tbsRow
		with: [ html tbsColumn: [ self renderLeftColumnOn: html ] mediumSize: 6.
			html tbsColumn: [ self renderRightColumnOn: html ] mediumSize: 6 ]