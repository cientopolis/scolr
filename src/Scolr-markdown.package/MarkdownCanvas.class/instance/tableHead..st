tables
tableHead: aStringOrBlock
	^ current addElement: (MarkdownTableHead with: aStringOrBlock)