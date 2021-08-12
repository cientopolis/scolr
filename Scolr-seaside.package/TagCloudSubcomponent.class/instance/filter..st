api
filter: aCollectionOfArticles
	^ aCollectionOfArticles
		select: [ :object | 
			| objectTags |
			objectTags := block value: object.
			(objectTags anySatisfy: [ :tag | self visibleTags includes: tag ])
				or: [ (self visibleTags includes: '') & objectTags isEmpty ] ]