reading
add: article ifNotIn: existingArticles
	article isNil | (article hasDuplicateIn: existingArticles)
		ifTrue: [ importReport ignoreArticle: article ]
		ifFalse: [ articles add: article ]