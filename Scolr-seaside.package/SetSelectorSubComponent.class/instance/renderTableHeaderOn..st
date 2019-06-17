private
renderTableHeaderOn: html
	html
		tableHead: [ html tableHeading
				class: 'col-md-7';
				with: 'Lists of articles'.
			html tableHeading
				class: 'col-md-2';
				with: 'Articles in list'.
			html tableHeading
				class: 'col-md-2';
				with: 'Waiting for you'.
			html tableHeading
				class: 'col-md-1';
				with: '' ]