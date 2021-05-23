rendering
renderCommonHeadingsOn: html
	html tableHeading
		class: 'col-md-1';
		with: '#'.
	html tableHeading
		class: 'col-md-5';
		with: [ html text: 'Article'.
			self renderArticleSortMenuOn: html ].
	html tableHeading
		class: 'col-md-2';
		with: 'Tags'