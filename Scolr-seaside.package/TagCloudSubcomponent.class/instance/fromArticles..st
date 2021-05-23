initialization
fromArticles: articles
	tags := Bag new.
	articles
		do: [ :each | 
			tags addAll: each tags.
			each tags ifEmpty: [ tags add: '' ] ]