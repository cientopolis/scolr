accessing
tagsInUse
	^ (reviews , classifications
		inject: Set new
		into: [ :set :op | 
			set
				addAll: op tags;
				yourself ]) asSortedCollection