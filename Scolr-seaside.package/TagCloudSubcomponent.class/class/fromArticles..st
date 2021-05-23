instance creation
fromArticles: articles
	^ self new
		fromArticles: articles;
		yourself