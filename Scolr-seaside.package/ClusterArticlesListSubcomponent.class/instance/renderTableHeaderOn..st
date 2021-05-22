accessing
renderTableHeaderOn: html
	html
		tableHead: [ html tableHeading
				class: 'col-md-1';
				with: '#'.
			html tableHeading
				class: 'col-md-6';
				with: 'Summary'.
			html tableHeading
				class: 'col-md-5';
				with: 'Tags' ]