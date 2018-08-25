rendering-articles
selectedArticles

	^selectedResulSets inject: (SortedCollection sortBlock: sortBlock)
		into: 
			[:set :each |
			set
				addAll: each articles;
				yourself]