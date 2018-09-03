private
renderTableHeaderOn: html
	html
		tableHead: [ html tableHeading: 'List'.
			html tableHeading: 'In'.
			html tableHeading: 'Out'.
			html tableHeading: 'Conflict'.
			html tableHeading: 'Waiting for you'.
			html tableHeading: 'Actions' ]