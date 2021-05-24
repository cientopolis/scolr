api
filter: aCollectionOfArticles
	^ aCollectionOfArticles
		reject: [ :object | 
			| objectTags |
			objectTags := block value: object.
			(objectTags anySatisfy: [ :tag | hiddenTags includes: tag ])
				or: [ (hiddenTags includes: '') & objectTags isEmpty ] ]