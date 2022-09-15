tables
tableData: aStringOrBlock
	^ current addElement: (MarkdownTableData with: aStringOrBlock)