rendering
renderContentOn: html
	html heading
		level: 3;
		with: 'Available article sets'.
	html tbsTable
		beBordered;
		beHover;
		with: [ self renderTableHeaderOn: html.
			html tableBody: [ self parent coReview resultSets do: [ :each | self renderTableRowFor: each on: html ] ] ]