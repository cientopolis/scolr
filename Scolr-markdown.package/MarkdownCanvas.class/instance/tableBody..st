tables
tableBody: aStringOrBlock
	^ current addElement: (MarkdownElement with: aStringOrBlock)