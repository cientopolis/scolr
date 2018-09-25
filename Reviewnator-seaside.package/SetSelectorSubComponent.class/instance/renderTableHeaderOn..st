private
renderTableHeaderOn: html
	html
		tableHead: [ html tableHeading
				class: 'col-md-7';
				with: 'Lists of articles'.
			html tableHeading
				class: 'col-md-1';
				with: 'Total'.
			html tableHeading
				class: 'col-md-1';
				with: 'In'.
			html tableHeading
				class: 'col-md-1';
				with: 'Out'.
			html tableHeading
				class: 'col-md-1';
				with: 'Waiting for you'.
			html tableHeading
				class: 'col-md-1';
				with: 'Actions' ]