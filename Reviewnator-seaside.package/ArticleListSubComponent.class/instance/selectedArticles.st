accessing
selectedArticles
	^ self parent selectedResulSets
		inject: (SortedCollection sortBlock: sortBlock)
		into: [ :set :each | 
			set
				addAll: each articles;
				yourself ]