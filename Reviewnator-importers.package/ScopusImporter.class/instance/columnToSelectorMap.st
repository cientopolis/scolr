columns
columnToSelectorMap 
	| columnToSelectorMap |
	columnToSelectorMap := Dictionary new.
	columnToSelectorMap
		at: 'authors' put: 'authors';
		at: 'title' put: 'title';
		at: 'doi' put: 'doi';
		at: 'abstract' put: 'abstract';
		at: 'document type' put: 'documentType';
		at: 'year' put: 'year'.
	^ columnToSelectorMap