rendering
renderContentOn: html
	html tbsTable
		beBordered;
		beHover;
		with: [ self renderTableHeaderOn: html.
			html
				tableBody: [ self parent coReview resultSets do: [ :each | self renderTableRowFor: each on: html ] ] ].
	html
		paragraph: [ html anchor
				callback: [ self parent uploadResultSet ];
				with: [ html tbsButton
						beExtraSmall;
						with: 'Upload' ] ].
