initialization
fromArticles: articles
	articles do: [ :each | tags addAll: each tags ]