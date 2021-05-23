initialization
parent: aMainComponent
	super parent: aMainComponent.
	tagCloudSubcomponent := TagCloudSubcomponent
		fromArticles: self allArticles