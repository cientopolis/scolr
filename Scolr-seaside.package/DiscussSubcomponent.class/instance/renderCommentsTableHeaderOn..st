rendering-comments
renderCommentsTableHeaderOn: html
	html
		tableHead: [ html tableHeading
				class: 'col-md-3';
				with: 'Who and when'.
			html tableHeading
				class: 'col-md-8';
				with: 'Comment'.
			html tableHeading
				class: 'col-md-1';
				with: 'Code' ]