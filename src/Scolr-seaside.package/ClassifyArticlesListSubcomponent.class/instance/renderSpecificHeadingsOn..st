rendering
renderSpecificHeadingsOn: html
	html tableHeading
		class: 'col-md-2';
		with: [ html text: 'All opinions'.
			self renderStatusFilterMenuOn: html ].
	html tableHeading
		class: 'col-md-2';
		with: 'Your opinion'