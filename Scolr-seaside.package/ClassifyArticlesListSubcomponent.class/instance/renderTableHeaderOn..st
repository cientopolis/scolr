rendering
renderTableHeaderOn: html
	html
		tableHead: [ html tableHeading
				class: 'col-md-1';
				with: '#'.
			html tableHeading
				class: 'col-md-7';
				with: 'Summary'.
			html tableHeading
				class: 'col-md-2';
				with: 'Classification tags'.
			html tableHeading
				class: 'col-md-1';
				with: 'All opinions'.
			html tableHeading
				class: 'col-md-1';
				with: 'Your opinion' ]