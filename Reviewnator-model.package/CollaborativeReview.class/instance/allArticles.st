accessing
allArticles
	^ self resultSets
		inject: Set new
		into: [ :sub :each | 
			sub
				addAll: each articles;
				yourself ]