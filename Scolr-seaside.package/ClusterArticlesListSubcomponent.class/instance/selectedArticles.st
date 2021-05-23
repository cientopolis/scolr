accessing
selectedArticles
	^ self allArticles
		reject: [ :article | 
			article tags
				anySatisfy: [ :tag | tagCloudSubcomponent hiddenTags includes: tag ] ]