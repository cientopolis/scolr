rendering
renderTableHeaderOn: html
	html
		tableHead: [ html tableHeading
				class: 'col-md-1';
				with: '#'.
			html tableHeading
				class: 'col-md-6';
				with: 'Summary'.
			html tableHeading
				class: 'col-md-2';
				with: 'Review tags'.
			html tableHeading
				class: 'col-md-2';
				with: 'Reviewed by'.
			html tableHeading
				class: 'col-md-1';
				with: 'Actions' ]