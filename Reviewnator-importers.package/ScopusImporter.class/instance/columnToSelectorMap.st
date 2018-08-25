columns
columnToSelectorMap 
	| columnToSelectorMap |
	columnToSelectorMap := Dictionary new.
	columnToSelectorMap
		at: 'Authors' put: 'authors';
		at: 'Title' put: 'title';
		at: 'DOI' put: 'doi';
		at: 'Abstract' put: 'abstract';
		at: 'Document Type' put: 'documentType';
		at: 'Year' put: 'year'.
	^ columnToSelectorMap