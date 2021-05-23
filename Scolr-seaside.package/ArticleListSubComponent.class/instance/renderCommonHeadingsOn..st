rendering
renderCommonHeadingsOn: html
	html tableHeading
		class: 'col-md-1';
		with: '#'.
	html tableHeading
		class: 'col-md-7';
		with: [ html text: 'Artile'.
			self renderArticleSortMenuOn: html ].
	html tableHeading
		class: 'col-md-2';
		with: 'Tags'