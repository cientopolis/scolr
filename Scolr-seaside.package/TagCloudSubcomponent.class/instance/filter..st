api
filter: aCollectionOfArticles
	^ aCollectionOfArticles
		reject: [ :article | 
			(article tags anySatisfy: [ :tag | hiddenTags includes: tag ])
				or: [ (hiddenTags includes: '') & article tags isEmpty ] ]