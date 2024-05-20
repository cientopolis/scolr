accessing
renderOptionsOn: html

	super renderOptionsOn: html.
	html div: [ 
		html strong: 'Export list as: '.

		html anchor
			callback: [ self exportVisibleListAsBibtex ];
			with: 'bibtex' ]