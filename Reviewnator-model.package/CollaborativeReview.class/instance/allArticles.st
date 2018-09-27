querying
allArticles
	^ self resultSets flatCollect: [ :set | set articles ]