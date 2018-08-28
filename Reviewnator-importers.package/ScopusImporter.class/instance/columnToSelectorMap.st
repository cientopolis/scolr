columns
columnToSelectorMap 
	| columnToSelectorMap |
	columnToSelectorMap := Dictionary new.
	columnToSelectorMap
		at: 'authors' put: #authors;
		at: 'title' put: #title;
		at: 'abstract' put: #abstract;
		at: 'year' put: #year.
	^ columnToSelectorMap