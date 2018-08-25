accessing
tagsFor: anArticle
	^ (self classifications , self reviews select: [ :each | each article == anArticle ])
		inject: Set new
		into: [ :tags :each | 
			tags
				addAll: each tags;
				yourself ]