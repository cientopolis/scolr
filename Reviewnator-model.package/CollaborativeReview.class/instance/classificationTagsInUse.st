querying
classificationTagsInUse
	^ (self allArticles flatCollectAsSet: [ :each | each classificationTags ]) asSortedCollection