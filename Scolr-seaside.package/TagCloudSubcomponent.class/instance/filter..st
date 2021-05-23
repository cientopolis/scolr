api
filter: aCollectionOfArticles
	^ aCollectionOfArticles
		reject:
			[ :article | article tags anySatisfy: [ :tag | hiddenTags includes: tag ] ]