classifications
tagAssignments
	^ self allArticles flatCollect: [ :each | each tagAssignments ]