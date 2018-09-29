tables
tableRow: aStringOrBlock
	^ current addElement: (MarkdownTableRow with: aStringOrBlock)