rendering
renderContentOn: html
	html heading
		level: 3;
		with: 'Lists of articles'.
	html tbsTable
		beBordered;
		beHover;
		with: [ self renderTableHeaderOn: html.
			html tableBody: [ self parent coReview resultSets do: [ :each | self renderTableRowFor: each on: html ] ] ]